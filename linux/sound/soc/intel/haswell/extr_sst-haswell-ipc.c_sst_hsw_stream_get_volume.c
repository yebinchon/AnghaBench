
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * volume_register_address; } ;
struct sst_hsw_stream {TYPE_1__ reply; } ;
struct sst_hsw {int dsp; } ;


 int EINVAL ;
 int sst_dsp_read (int ,int*,int ,int) ;

int sst_hsw_stream_get_volume(struct sst_hsw *hsw, struct sst_hsw_stream *stream,
 u32 stage_id, u32 channel, u32 *volume)
{
 if (channel > 1)
  return -EINVAL;

 sst_dsp_read(hsw->dsp, volume,
  stream->reply.volume_register_address[channel],
  sizeof(*volume));

 return 0;
}
