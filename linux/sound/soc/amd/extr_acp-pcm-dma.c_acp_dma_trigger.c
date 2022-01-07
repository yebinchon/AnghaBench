
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct audio_substream_data* private_data; } ;
struct audio_substream_data {int ch1; int acp_mmio; int ch2; int capture_channel; int bytescount; } ;


 int CAP_CHANNEL0 ;
 int CAP_CHANNEL1 ;
 int EINVAL ;
 int SNDRV_PCM_STREAM_CAPTURE ;






 int acp_dma_cap_channel_disable (int ,int ) ;
 int acp_dma_cap_channel_enable (int ,int ) ;
 int acp_dma_start (int ,int ,int) ;
 int acp_dma_stop (int ,int ) ;
 int acp_get_byte_count (struct audio_substream_data*) ;

__attribute__((used)) static int acp_dma_trigger(struct snd_pcm_substream *substream, int cmd)
{
 int ret;

 struct snd_pcm_runtime *runtime = substream->runtime;
 struct audio_substream_data *rtd = runtime->private_data;

 if (!rtd)
  return -EINVAL;
 switch (cmd) {
 case 130:
 case 132:
 case 131:
  rtd->bytescount = acp_get_byte_count(rtd);
  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
   if (rtd->capture_channel == CAP_CHANNEL0) {
    acp_dma_cap_channel_disable(rtd->acp_mmio,
           CAP_CHANNEL1);
    acp_dma_cap_channel_enable(rtd->acp_mmio,
          CAP_CHANNEL0);
   }
   if (rtd->capture_channel == CAP_CHANNEL1) {
    acp_dma_cap_channel_disable(rtd->acp_mmio,
           CAP_CHANNEL0);
    acp_dma_cap_channel_enable(rtd->acp_mmio,
          CAP_CHANNEL1);
   }
   acp_dma_start(rtd->acp_mmio, rtd->ch1, 1);
  } else {
   acp_dma_start(rtd->acp_mmio, rtd->ch1, 1);
   acp_dma_start(rtd->acp_mmio, rtd->ch2, 1);
  }
  ret = 0;
  break;
 case 129:
 case 133:
 case 128:
  acp_dma_stop(rtd->acp_mmio, rtd->ch2);
  ret = acp_dma_stop(rtd->acp_mmio, rtd->ch1);
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
