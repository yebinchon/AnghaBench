
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tse850_priv {int ana; } ;
struct soc_enum {unsigned int items; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int regulator_set_voltage (int ,unsigned int,unsigned int) ;
 struct tse850_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 struct snd_soc_dapm_context* snd_soc_dapm_kcontrol_dapm (struct snd_kcontrol*) ;
 int snd_soc_dapm_put_enum_double (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int tse850_put_ana(struct snd_kcontrol *kctrl,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kctrl);
 struct snd_soc_card *card = dapm->card;
 struct tse850_priv *tse850 = snd_soc_card_get_drvdata(card);
 struct soc_enum *e = (struct soc_enum *)kctrl->private_value;
 unsigned int uV = ucontrol->value.enumerated.item[0];
 int ret;

 if (uV >= e->items)
  return -EINVAL;
 if (uV)
  uV = 11000000 + (1000000 * uV);
 else
  uV = 2000000;

 ret = regulator_set_voltage(tse850->ana, uV, uV);
 if (ret < 0)
  return ret;

 return snd_soc_dapm_put_enum_double(kctrl, ucontrol);
}
