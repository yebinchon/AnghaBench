
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xpsc_audio_dmadata {int msbits; void* ddma_chan; int ddma_id; } ;


 int DSCR_CMD0_ALWAYS ;
 int ENOMEM ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int au1x_pcm_dbdma_free (struct au1xpsc_audio_dmadata*) ;
 int au1x_pcm_dmarx_cb ;
 int au1x_pcm_dmatx_cb ;
 void* au1xxx_dbdma_chan_alloc (int ,int ,int ,void*) ;
 int au1xxx_dbdma_reset (void*) ;
 int au1xxx_dbdma_ring_alloc (void*,int) ;
 int au1xxx_dbdma_set_devwidth (void*,int) ;
 int au1xxx_dbdma_stop (void*) ;

__attribute__((used)) static int au1x_pcm_dbdma_realloc(struct au1xpsc_audio_dmadata *pcd,
     int stype, int msbits)
{

 if (msbits == 24)
  msbits = 32;


 if ((pcd->ddma_chan) && (msbits == pcd->msbits))
  goto out;

 au1x_pcm_dbdma_free(pcd);

 if (stype == SNDRV_PCM_STREAM_CAPTURE)
  pcd->ddma_chan = au1xxx_dbdma_chan_alloc(pcd->ddma_id,
     DSCR_CMD0_ALWAYS,
     au1x_pcm_dmarx_cb, (void *)pcd);
 else
  pcd->ddma_chan = au1xxx_dbdma_chan_alloc(DSCR_CMD0_ALWAYS,
     pcd->ddma_id,
     au1x_pcm_dmatx_cb, (void *)pcd);

 if (!pcd->ddma_chan)
  return -ENOMEM;

 au1xxx_dbdma_set_devwidth(pcd->ddma_chan, msbits);
 au1xxx_dbdma_ring_alloc(pcd->ddma_chan, 2);

 pcd->msbits = msbits;

 au1xxx_dbdma_stop(pcd->ddma_chan);
 au1xxx_dbdma_reset(pcd->ddma_chan);

out:
 return 0;
}
