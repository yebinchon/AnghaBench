
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmaengine_pcm {int flags; int * chan; } ;


 unsigned int SNDRV_PCM_STREAM_CAPTURE ;
 unsigned int SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX ;
 int dma_release_channel (int ) ;

__attribute__((used)) static void dmaengine_pcm_release_chan(struct dmaengine_pcm *pcm)
{
 unsigned int i;

 for (i = SNDRV_PCM_STREAM_PLAYBACK; i <= SNDRV_PCM_STREAM_CAPTURE;
      i++) {
  if (!pcm->chan[i])
   continue;
  dma_release_channel(pcm->chan[i]);
  if (pcm->flags & SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX)
   break;
 }
}
