
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai_driver {int capture; int playback; } ;
struct snd_soc_dai {struct snd_soc_dai_driver* driver; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rate_max; int rate_min; int rates; int channels_max; int channels_min; int formats; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int dpcm_init_runtime_hw (struct snd_pcm_runtime*,int *) ;
 int dpcm_runtime_merge_chan (struct snd_pcm_substream*,int *,int *) ;
 int dpcm_runtime_merge_format (struct snd_pcm_substream*,int *) ;
 int dpcm_runtime_merge_rate (struct snd_pcm_substream*,int *,int *,int *) ;

__attribute__((used)) static void dpcm_set_fe_runtime(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct snd_soc_dai_driver *cpu_dai_drv = cpu_dai->driver;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  dpcm_init_runtime_hw(runtime, &cpu_dai_drv->playback);
 else
  dpcm_init_runtime_hw(runtime, &cpu_dai_drv->capture);

 dpcm_runtime_merge_format(substream, &runtime->hw.formats);
 dpcm_runtime_merge_chan(substream, &runtime->hw.channels_min,
    &runtime->hw.channels_max);
 dpcm_runtime_merge_rate(substream, &runtime->hw.rates,
    &runtime->hw.rate_min, &runtime->hw.rate_max);
}
