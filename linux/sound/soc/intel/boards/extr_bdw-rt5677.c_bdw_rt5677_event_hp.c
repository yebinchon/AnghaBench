
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct bdw_rt5677_priv {int gpio_hp_en; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int gpiod_set_value_cansleep (int ,scalar_t__) ;
 int msleep (int) ;
 struct bdw_rt5677_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int bdw_rt5677_event_hp(struct snd_soc_dapm_widget *w,
   struct snd_kcontrol *k, int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_soc_card *card = dapm->card;
 struct bdw_rt5677_priv *bdw_rt5677 = snd_soc_card_get_drvdata(card);

 if (SND_SOC_DAPM_EVENT_ON(event))
  msleep(70);

 gpiod_set_value_cansleep(bdw_rt5677->gpio_hp_en,
  SND_SOC_DAPM_EVENT_ON(event));

 return 0;
}
