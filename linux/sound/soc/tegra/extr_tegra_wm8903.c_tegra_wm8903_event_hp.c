
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_wm8903 {int gpio_hp_mute; } ;
struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int SND_SOC_DAPM_EVENT_ON (int) ;
 int gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int) ;
 struct tegra_wm8903* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int tegra_wm8903_event_hp(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *k, int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_soc_card *card = dapm->card;
 struct tegra_wm8903 *machine = snd_soc_card_get_drvdata(card);

 if (!gpio_is_valid(machine->gpio_hp_mute))
  return 0;

 gpio_set_value_cansleep(machine->gpio_hp_mute,
    !SND_SOC_DAPM_EVENT_ON(event));

 return 0;
}
