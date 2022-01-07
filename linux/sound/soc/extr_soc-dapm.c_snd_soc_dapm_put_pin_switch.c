
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_card {int dapm; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_soc_card* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_dapm_disable_pin (int *,char const*) ;
 int snd_soc_dapm_enable_pin (int *,char const*) ;
 int snd_soc_dapm_sync (int *) ;

int snd_soc_dapm_put_pin_switch(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_card *card = snd_kcontrol_chip(kcontrol);
 const char *pin = (const char *)kcontrol->private_value;

 if (ucontrol->value.integer.value[0])
  snd_soc_dapm_enable_pin(&card->dapm, pin);
 else
  snd_soc_dapm_disable_pin(&card->dapm, pin);

 snd_soc_dapm_sync(&card->dapm);
 return 0;
}
