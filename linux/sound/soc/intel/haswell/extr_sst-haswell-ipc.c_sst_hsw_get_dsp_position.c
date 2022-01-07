
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int read_position_register_address; } ;
struct sst_hsw_stream {TYPE_1__ reply; } ;
struct sst_hsw {int dsp; } ;
typedef int rpos ;


 int sst_dsp_read (int ,int *,int ,int) ;

u32 sst_hsw_get_dsp_position(struct sst_hsw *hsw,
 struct sst_hsw_stream *stream)
{
 u32 rpos;

 sst_dsp_read(hsw->dsp, &rpos,
  stream->reply.read_position_register_address, sizeof(rpos));

 return rpos;
}
