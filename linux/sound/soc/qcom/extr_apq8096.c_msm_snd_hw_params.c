
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int ENOTSUPP ;
 int SLIM_MAX_RX_PORTS ;
 int SLIM_MAX_TX_PORTS ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int pr_err (char*,int) ;
 int snd_soc_dai_get_channel_map (struct snd_soc_dai*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int snd_soc_dai_set_channel_map (struct snd_soc_dai*,scalar_t__,scalar_t__*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int msm_snd_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 u32 rx_ch[SLIM_MAX_RX_PORTS], tx_ch[SLIM_MAX_TX_PORTS];
 u32 rx_ch_cnt = 0, tx_ch_cnt = 0;
 int ret = 0;

 ret = snd_soc_dai_get_channel_map(codec_dai,
    &tx_ch_cnt, tx_ch, &rx_ch_cnt, rx_ch);
 if (ret != 0 && ret != -ENOTSUPP) {
  pr_err("failed to get codec chan map, err:%d\n", ret);
  goto end;
 } else if (ret == -ENOTSUPP) {
  return 0;
 }

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  ret = snd_soc_dai_set_channel_map(cpu_dai, 0, ((void*)0),
        rx_ch_cnt, rx_ch);
 else
  ret = snd_soc_dai_set_channel_map(cpu_dai, tx_ch_cnt, tx_ch,
        0, ((void*)0));
 if (ret != 0 && ret != -ENOTSUPP)
  pr_err("Failed to set cpu chan map, err:%d\n", ret);
 else if (ret == -ENOTSUPP)
  ret = 0;
end:
 return ret;
}
