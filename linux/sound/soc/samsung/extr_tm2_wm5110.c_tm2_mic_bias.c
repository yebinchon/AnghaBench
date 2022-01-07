
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm2_machine_priv {int gpio_mic_bias; } ;
struct snd_soc_dapm_widget {TYPE_1__* dapm; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {struct snd_soc_card* card; } ;




 int gpiod_set_value_cansleep (int ,int) ;
 struct tm2_machine_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int tm2_mic_bias(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_card *card = w->dapm->card;
 struct tm2_machine_priv *priv = snd_soc_card_get_drvdata(card);

 switch (event) {
 case 128:
  gpiod_set_value_cansleep(priv->gpio_mic_bias, 1);
  break;
 case 129:
  gpiod_set_value_cansleep(priv->gpio_mic_bias, 0);
  break;
 }

 return 0;
}
