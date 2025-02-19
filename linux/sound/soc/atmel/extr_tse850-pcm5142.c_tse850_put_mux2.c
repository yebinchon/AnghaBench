
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tse850_priv {unsigned int loop2_cache; int loop2; } ;
struct soc_enum {unsigned int items; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {unsigned int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int EINVAL ;
 int gpiod_set_value_cansleep (int ,unsigned int) ;
 struct tse850_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 struct snd_soc_dapm_context* snd_soc_dapm_kcontrol_dapm (struct snd_kcontrol*) ;
 int snd_soc_dapm_put_enum_double (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int tse850_put_mux2(struct snd_kcontrol *kctrl,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kctrl);
 struct snd_soc_card *card = dapm->card;
 struct tse850_priv *tse850 = snd_soc_card_get_drvdata(card);
 struct soc_enum *e = (struct soc_enum *)kctrl->private_value;
 unsigned int val = ucontrol->value.enumerated.item[0];

 if (val >= e->items)
  return -EINVAL;

 gpiod_set_value_cansleep(tse850->loop2, val);
 tse850->loop2_cache = val;

 return snd_soc_dapm_put_enum_double(kctrl, ucontrol);
}
