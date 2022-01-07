
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {int dummy; } ;
struct imx_audmix {int cpu_mclk; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int FSL_AUDMIX_FORMATS ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 unsigned long clk_get_rate (int ) ;
 int dev_warn (struct device*,char*,unsigned long) ;
 int imx_audmix_rate_constraints ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_mask64 (struct snd_pcm_runtime*,int ,int ) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int,int) ;
 struct imx_audmix* snd_soc_card_get_drvdata (TYPE_1__*) ;

__attribute__((used)) static int imx_audmix_fe_startup(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct imx_audmix *priv = snd_soc_card_get_drvdata(rtd->card);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct device *dev = rtd->card->dev;
 unsigned long clk_rate = clk_get_rate(priv->cpu_mclk);
 int ret;

 if (clk_rate % 24576000 == 0) {
  ret = snd_pcm_hw_constraint_list(runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       &imx_audmix_rate_constraints);
  if (ret < 0)
   return ret;
 } else {
  dev_warn(dev, "mclk may be not supported %lu\n", clk_rate);
 }

 ret = snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_CHANNELS,
        1, 8);
 if (ret < 0)
  return ret;

 return snd_pcm_hw_constraint_mask64(runtime, SNDRV_PCM_HW_PARAM_FORMAT,
         FSL_AUDMIX_FORMATS);
}
