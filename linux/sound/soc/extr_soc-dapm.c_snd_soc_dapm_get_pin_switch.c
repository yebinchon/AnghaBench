
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_card {int dapm_mutex; int dapm; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int SND_SOC_DAPM_CLASS_RUNTIME ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 struct snd_soc_card* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_dapm_get_pin_status (int *,char const*) ;

int snd_soc_dapm_get_pin_switch(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_card *card = snd_kcontrol_chip(kcontrol);
 const char *pin = (const char *)kcontrol->private_value;

 mutex_lock_nested(&card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);

 ucontrol->value.integer.value[0] =
  snd_soc_dapm_get_pin_status(&card->dapm, pin);

 mutex_unlock(&card->dapm_mutex);

 return 0;
}
