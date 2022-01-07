
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_spdif_dev {int dummy; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct sun4i_spdif_dev* snd_soc_dai_get_drvdata (int ) ;
 int sun4i_spdif_configure (struct sun4i_spdif_dev*) ;

__attribute__((used)) static int sun4i_spdif_startup(struct snd_pcm_substream *substream,
          struct snd_soc_dai *cpu_dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct sun4i_spdif_dev *host = snd_soc_dai_get_drvdata(rtd->cpu_dai);

 if (substream->stream != SNDRV_PCM_STREAM_PLAYBACK)
  return -EINVAL;

 sun4i_spdif_configure(host);

 return 0;
}
