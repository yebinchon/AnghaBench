
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xpsc_audio_dmadata {scalar_t__ msbits; scalar_t__ ddma_chan; } ;


 int au1xxx_dbdma_chan_free (scalar_t__) ;
 int au1xxx_dbdma_reset (scalar_t__) ;
 int au1xxx_dbdma_stop (scalar_t__) ;

__attribute__((used)) static void au1x_pcm_dbdma_free(struct au1xpsc_audio_dmadata *pcd)
{
 if (pcd->ddma_chan) {
  au1xxx_dbdma_stop(pcd->ddma_chan);
  au1xxx_dbdma_reset(pcd->ddma_chan);
  au1xxx_dbdma_chan_free(pcd->ddma_chan);
  pcd->ddma_chan = 0;
  pcd->msbits = 0;
 }
}
