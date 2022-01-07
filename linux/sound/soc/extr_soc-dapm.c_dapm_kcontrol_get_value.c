
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct dapm_kcontrol_data {unsigned int value; } ;


 struct dapm_kcontrol_data* snd_kcontrol_chip (struct snd_kcontrol const*) ;

unsigned int dapm_kcontrol_get_value(const struct snd_kcontrol *kcontrol)
{
 struct dapm_kcontrol_data *data = snd_kcontrol_chip(kcontrol);

 return data->value;
}
