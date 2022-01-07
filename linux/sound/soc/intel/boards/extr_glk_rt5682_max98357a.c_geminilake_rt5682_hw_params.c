
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dev; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int dev_err (int ,char*,int) ;
 int snd_soc_dai_set_tdm_slot (struct snd_soc_dai*,int,int,int,int) ;

__attribute__((used)) static int geminilake_rt5682_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int ret;


 ret = snd_soc_dai_set_tdm_slot(codec_dai, 0x0, 0x0, 2, 24);
 if (ret < 0) {
  dev_err(rtd->dev, "set TDM slot err:%d\n", ret);
  return ret;
 }

 return ret;
}
