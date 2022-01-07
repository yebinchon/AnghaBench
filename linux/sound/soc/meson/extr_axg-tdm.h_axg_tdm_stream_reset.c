
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axg_tdm_stream {int dummy; } ;


 int axg_tdm_stream_start (struct axg_tdm_stream*) ;
 int axg_tdm_stream_stop (struct axg_tdm_stream*) ;

__attribute__((used)) static inline int axg_tdm_stream_reset(struct axg_tdm_stream *ts)
{
 axg_tdm_stream_stop(ts);
 return axg_tdm_stream_start(ts);
}
