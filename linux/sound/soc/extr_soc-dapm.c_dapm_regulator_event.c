
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int on_val; int shift; int regulator; int name; TYPE_1__* dapm; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int SND_SOC_DAPM_REGULATOR_BYPASS ;
 int dev_warn (int ,char*,int ,int) ;
 int regulator_allow_bypass (int ,int) ;
 int regulator_disable_deferred (int ,int ) ;
 int regulator_enable (int ) ;
 int soc_dapm_async_complete (TYPE_1__*) ;

int dapm_regulator_event(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol, int event)
{
 int ret;

 soc_dapm_async_complete(w->dapm);

 if (SND_SOC_DAPM_EVENT_ON(event)) {
  if (w->on_val & SND_SOC_DAPM_REGULATOR_BYPASS) {
   ret = regulator_allow_bypass(w->regulator, 0);
   if (ret != 0)
    dev_warn(w->dapm->dev,
      "ASoC: Failed to unbypass %s: %d\n",
      w->name, ret);
  }

  return regulator_enable(w->regulator);
 } else {
  if (w->on_val & SND_SOC_DAPM_REGULATOR_BYPASS) {
   ret = regulator_allow_bypass(w->regulator, 1);
   if (ret != 0)
    dev_warn(w->dapm->dev,
      "ASoC: Failed to bypass %s: %d\n",
      w->name, ret);
  }

  return regulator_disable_deferred(w->regulator, w->shift);
 }
}
