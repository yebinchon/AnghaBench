
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {TYPE_1__* dapm; } ;
struct snd_kcontrol {int dummy; } ;
struct rk_drvdata {int gpio_hp_en; } ;
struct TYPE_2__ {int card; } ;


 int SND_SOC_DAPM_EVENT_ON (int) ;
 int gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int ) ;
 struct rk_drvdata* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int rk_hp_power(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *k, int event)
{
 struct rk_drvdata *machine = snd_soc_card_get_drvdata(w->dapm->card);

 if (!gpio_is_valid(machine->gpio_hp_en))
  return 0;

 gpio_set_value_cansleep(machine->gpio_hp_en,
    SND_SOC_DAPM_EVENT_ON(event));

 return 0;
}
