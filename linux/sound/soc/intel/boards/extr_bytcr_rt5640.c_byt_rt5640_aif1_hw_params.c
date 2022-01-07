
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int byt_rt5640_prepare_and_enable_pll1 (struct snd_soc_dai*,int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int byt_rt5640_aif1_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *dai = rtd->codec_dai;

 return byt_rt5640_prepare_and_enable_pll1(dai, params_rate(params));
}
