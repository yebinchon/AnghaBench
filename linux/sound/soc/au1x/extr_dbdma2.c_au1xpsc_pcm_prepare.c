
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; } ;
struct au1xpsc_audio_dmadata {int ddma_chan; } ;


 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int au1x_pcm_queue_rx (struct au1xpsc_audio_dmadata*) ;
 int au1x_pcm_queue_tx (struct au1xpsc_audio_dmadata*) ;
 int au1xxx_dbdma_reset (int ) ;
 struct au1xpsc_audio_dmadata* to_dmadata (struct snd_pcm_substream*) ;

__attribute__((used)) static int au1xpsc_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct au1xpsc_audio_dmadata *pcd = to_dmadata(substream);

 au1xxx_dbdma_reset(pcd->ddma_chan);

 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
  au1x_pcm_queue_rx(pcd);
  au1x_pcm_queue_rx(pcd);
 } else {
  au1x_pcm_queue_tx(pcd);
  au1x_pcm_queue_tx(pcd);
 }

 return 0;
}
