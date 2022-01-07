
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* dma_adb; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_6__ {int* resources; } ;
typedef TYPE_2__ stream_t ;


 int NR_SRC ;
 int SRC_RATIO (int,unsigned int) ;
 size_t VORTEX_RESOURCE_SRC ;
 int vortex_src_setupchannel (TYPE_1__*,int,int,int ,int ,int,int,int,int,int) ;

__attribute__((used)) static void
vortex_adb_setsrc(vortex_t * vortex, int adbdma, unsigned int rate, int dir)
{
 stream_t *stream = &(vortex->dma_adb[adbdma]);
 int i, cvrt;


 if (dir)
  cvrt = SRC_RATIO(rate, 48000);
 else
  cvrt = SRC_RATIO(48000, rate);


 for (i = 0; i < NR_SRC; i++) {
  if (stream->resources[VORTEX_RESOURCE_SRC] & (1 << i))
   vortex_src_setupchannel(vortex, i, cvrt, 0, 0, i, dir, 1, cvrt, dir);
 }
}
