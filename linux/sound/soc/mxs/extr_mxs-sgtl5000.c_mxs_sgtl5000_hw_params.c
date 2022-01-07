
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int MXS_SAIF_MCLK ;
 int SGTL5000_SYSCLK ;
 int dev_err (int ,char*,int,int) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int mxs_sgtl5000_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 unsigned int rate = params_rate(params);
 u32 mclk;
 int ret;


 switch (rate) {
 case 96000:
  mclk = 256 * rate;
  break;
 default:
  mclk = 512 * rate;
  break;
 }


 ret = snd_soc_dai_set_sysclk(codec_dai, SGTL5000_SYSCLK, mclk, 0);
 if (ret) {
  dev_err(codec_dai->dev, "Failed to set sysclk to %u.%03uMHz\n",
   mclk / 1000000, mclk / 1000 % 1000);
  return ret;
 }


 ret = snd_soc_dai_set_sysclk(cpu_dai, MXS_SAIF_MCLK, mclk, 0);
 if (ret) {
  dev_err(cpu_dai->dev, "Failed to set sysclk to %u.%03uMHz\n",
   mclk / 1000000, mclk / 1000 % 1000);
  return ret;
 }

 return 0;
}
