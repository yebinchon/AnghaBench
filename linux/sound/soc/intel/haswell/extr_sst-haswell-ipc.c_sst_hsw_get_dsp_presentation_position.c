
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int presentation_position_register_address; } ;
struct sst_hsw_stream {TYPE_1__ reply; } ;
struct sst_hsw {int dsp; } ;
typedef int ppos ;


 int sst_dsp_read (int ,int *,int ,int) ;

u64 sst_hsw_get_dsp_presentation_position(struct sst_hsw *hsw,
 struct sst_hsw_stream *stream)
{
 u64 ppos;

 sst_dsp_read(hsw->dsp, &ppos,
  stream->reply.presentation_position_register_address,
  sizeof(ppos));

 return ppos;
}
