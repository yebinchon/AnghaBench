
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int suspend_bias_off; TYPE_1__* card; scalar_t__ idle_bias_off; } ;
struct TYPE_2__ {int snd_card; } ;




 int snd_power_get_state (int ) ;

__attribute__((used)) static bool dapm_idle_bias_off(struct snd_soc_dapm_context *dapm)
{
 if (dapm->idle_bias_off)
  return 1;

 switch (snd_power_get_state(dapm->card->snd_card)) {
 case 128:
 case 129:
  return dapm->suspend_bias_off;
 default:
  break;
 }

 return 0;
}
