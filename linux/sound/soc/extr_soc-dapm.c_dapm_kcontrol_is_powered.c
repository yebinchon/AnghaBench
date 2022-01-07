
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct dapm_kcontrol_data {TYPE_1__* widget; } ;
struct TYPE_2__ {int power; } ;


 struct dapm_kcontrol_data* snd_kcontrol_chip (struct snd_kcontrol const*) ;

__attribute__((used)) static bool dapm_kcontrol_is_powered(const struct snd_kcontrol *kcontrol)
{
 struct dapm_kcontrol_data *data = snd_kcontrol_chip(kcontrol);

 if (!data->widget)
  return 1;

 return data->widget->power;
}
