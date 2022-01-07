
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {scalar_t__ bias_level; scalar_t__ target_bias_level; scalar_t__ dev; } ;
typedef int async_cookie_t ;


 scalar_t__ SND_SOC_BIAS_OFF ;
 scalar_t__ SND_SOC_BIAS_ON ;
 scalar_t__ SND_SOC_BIAS_PREPARE ;
 scalar_t__ SND_SOC_BIAS_STANDBY ;
 int dev_err (scalar_t__,char*,int) ;
 int pm_runtime_put (scalar_t__) ;
 int snd_soc_dapm_set_bias_level (struct snd_soc_dapm_context*,scalar_t__) ;

__attribute__((used)) static void dapm_post_sequence_async(void *data, async_cookie_t cookie)
{
 struct snd_soc_dapm_context *d = data;
 int ret;


 if (d->bias_level == SND_SOC_BIAS_PREPARE &&
     (d->target_bias_level == SND_SOC_BIAS_STANDBY ||
      d->target_bias_level == SND_SOC_BIAS_OFF)) {
  ret = snd_soc_dapm_set_bias_level(d, SND_SOC_BIAS_STANDBY);
  if (ret != 0)
   dev_err(d->dev, "ASoC: Failed to apply standby bias: %d\n",
    ret);
 }


 if (d->bias_level == SND_SOC_BIAS_STANDBY &&
     d->target_bias_level == SND_SOC_BIAS_OFF) {
  ret = snd_soc_dapm_set_bias_level(d, SND_SOC_BIAS_OFF);
  if (ret != 0)
   dev_err(d->dev, "ASoC: Failed to turn off bias: %d\n",
    ret);

  if (d->dev)
   pm_runtime_put(d->dev);
 }


 if (d->bias_level == SND_SOC_BIAS_PREPARE &&
     d->target_bias_level == SND_SOC_BIAS_ON) {
  ret = snd_soc_dapm_set_bias_level(d, SND_SOC_BIAS_ON);
  if (ret != 0)
   dev_err(d->dev, "ASoC: Failed to apply active bias: %d\n",
    ret);
 }
}
