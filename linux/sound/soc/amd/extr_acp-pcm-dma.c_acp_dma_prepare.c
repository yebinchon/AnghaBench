
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct audio_substream_data* private_data; } ;
struct audio_substream_data {scalar_t__ direction; int dma_dscr_idx_2; int acp_mmio; int dma_dscr_idx_1; int ch2; int ch1; } ;


 int EINVAL ;
 int NUM_DSCRS_PER_CHANNEL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int config_acp_dma_channel (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int acp_dma_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct audio_substream_data *rtd = runtime->private_data;
 u16 ch_acp_sysmem, ch_acp_i2s;

 if (!rtd)
  return -EINVAL;

 if (rtd->direction == SNDRV_PCM_STREAM_PLAYBACK) {
  ch_acp_sysmem = rtd->ch1;
  ch_acp_i2s = rtd->ch2;
 } else {
  ch_acp_i2s = rtd->ch1;
  ch_acp_sysmem = rtd->ch2;
 }
 config_acp_dma_channel(rtd->acp_mmio,
          ch_acp_sysmem,
          rtd->dma_dscr_idx_1,
          NUM_DSCRS_PER_CHANNEL, 0);
 config_acp_dma_channel(rtd->acp_mmio,
          ch_acp_i2s,
          rtd->dma_dscr_idx_2,
          NUM_DSCRS_PER_CHANNEL, 0);
 return 0;
}
