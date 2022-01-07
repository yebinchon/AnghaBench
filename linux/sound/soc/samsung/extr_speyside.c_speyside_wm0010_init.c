
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;


 int MCLK_AUDIO_RATE ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;

__attribute__((used)) static int speyside_wm0010_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dai *dai = rtd->codec_dai;
 int ret;

 ret = snd_soc_dai_set_sysclk(dai, 0, MCLK_AUDIO_RATE, 0);
 if (ret < 0)
  return ret;

 return 0;
}
