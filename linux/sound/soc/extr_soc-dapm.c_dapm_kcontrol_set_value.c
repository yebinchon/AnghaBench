
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct dapm_kcontrol_data {unsigned int value; TYPE_1__* widget; } ;
struct TYPE_2__ {unsigned int on_val; } ;


 struct dapm_kcontrol_data* snd_kcontrol_chip (struct snd_kcontrol const*) ;

__attribute__((used)) static bool dapm_kcontrol_set_value(const struct snd_kcontrol *kcontrol,
 unsigned int value)
{
 struct dapm_kcontrol_data *data = snd_kcontrol_chip(kcontrol);

 if (data->value == value)
  return 0;

 if (data->widget)
  data->widget->on_val = value;

 data->value = value;

 return 1;
}
