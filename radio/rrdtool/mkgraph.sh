rrdtool graph /home/spodder/chickentownradio/stats/stream_12h.png \
--disable-rrdtool-tag -w 800 -h 250 --end now --start end-12h \
DEF:last_listener=/home/yeled/ez/rrdtool/stream.rrd:listener:LAST       \
DEF:average_listener=/home/yeled/ez/rrdtool/stream.rrd:listener:AVERAGE \
CDEF:trend=last_listener,1800,TRENDNAN           \
SHIFT:trend:-900                                 \
AREA:trend#acacff:"Current listener - Trend"     \
AREA:last_listener#999999cc:"Current listener"   \
LINE1:average_listener#000000cc:"Average listener / hour"

rrdtool graph /home/spodder/chickentownradio/stats/stream_7d.png \
--disable-rrdtool-tag -w 800 -h 250 --end now --start end-7d \
DEF:last_listener=/home/yeled/ez/rrdtool/stream.rrd:listener:LAST       \
DEF:average_listener=/home/yeled/ez/rrdtool/stream.rrd:listener:AVERAGE \
CDEF:trend=last_listener,1800,TRENDNAN           \
SHIFT:trend:-900                                 \
AREA:trend#acacff:"Current listener - Trend"     \
AREA:last_listener#999999cc:"Current listener"   \
LINE1:average_listener#000000cc:"Average listener / hour"

rrdtool graph /home/spodder/chickentownradio/stats/stream_1m.png \
--disable-rrdtool-tag -w 800 -h 250 --end now --start end-1m \
DEF:last_listener=/home/yeled/ez/rrdtool/stream.rrd:listener:LAST       \
DEF:average_listener=/home/yeled/ez/rrdtool/stream.rrd:listener:AVERAGE \
CDEF:trend=last_listener,1800,TRENDNAN           \
SHIFT:trend:-900                                 \
AREA:trend#acacff:"Current listener - Trend"     \

