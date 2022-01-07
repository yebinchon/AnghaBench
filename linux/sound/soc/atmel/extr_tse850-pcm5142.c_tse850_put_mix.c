
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tse850_priv {int add_cache; int add; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 struct tse850_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 struct snd_soc_dapm_context* snd_soc_dapm_kcontrol_dapm (struct snd_kcontrol*) ;
 int snd_soc_dapm_mixer_update_power (struct snd_soc_dapm_context*,struct snd_kcontrol*,int,int *) ;

__attribute__((used)) static int tse850_put_mix(struct snd_kcontrol *kctrl,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kctrl);
 struct snd_soc_card *card = dapm->card;
 struct tse850_priv *tse850 = snd_soc_card_get_drvdata(card);
 int connect = !!ucontrol->value.integer.value[0];

 if (tse850->add_cache == connect)
  return 0;





 gpiod_set_value_cansleep(tse850->add, connect);
 tse850->add_cache = connect;

 snd_soc_dapm_mixer_update_power(dapm, kctrl, connect, ((void*)0));
 return 1;
}
