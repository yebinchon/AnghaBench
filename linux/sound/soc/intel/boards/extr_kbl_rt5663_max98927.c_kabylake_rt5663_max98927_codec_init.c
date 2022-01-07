
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; TYPE_1__* card; } ;
struct TYPE_2__ {int dapm; } ;


 int dev_err (int ,char*,int) ;
 int kabylake_rt5663_codec_init (struct snd_soc_pcm_runtime*) ;
 int snd_soc_dapm_ignore_suspend (int *,char*) ;

__attribute__((used)) static int kabylake_rt5663_max98927_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 int ret;

 ret = kabylake_rt5663_codec_init(rtd);
 if (ret)
  return ret;

 ret = snd_soc_dapm_ignore_suspend(&rtd->card->dapm, "SoC DMIC");
 if (ret) {
  dev_err(rtd->dev, "SoC DMIC ignore suspend failed %d\n", ret);
  return ret;
 }

 return ret;
}
