
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int CODEC_CLOCK ;
 int EINVAL ;
 int IMX_SSP_SYS_CLK ;
 int SND_SOC_CLOCK_IN ;
 int SND_SOC_CLOCK_OUT ;
 int dev_err (int ,char*) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;
 int snd_soc_dai_set_tdm_slot (struct snd_soc_dai*,int,int,int,int ) ;

__attribute__((used)) static int eukrea_tlv320_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 int ret;

 ret = snd_soc_dai_set_sysclk(codec_dai, 0,
         CODEC_CLOCK, SND_SOC_CLOCK_OUT);
 if (ret) {
  dev_err(cpu_dai->dev,
   "Failed to set the codec sysclk.\n");
  return ret;
 }

 snd_soc_dai_set_tdm_slot(cpu_dai, 0x3, 0x3, 2, 0);

 ret = snd_soc_dai_set_sysclk(cpu_dai, IMX_SSP_SYS_CLK, 0,
    SND_SOC_CLOCK_IN);

 if (ret && ret != -EINVAL) {
  dev_err(cpu_dai->dev,
   "Can't set the IMX_SSP_SYS_CLK CPU system clock.\n");
  return ret;
 }

 return 0;
}
