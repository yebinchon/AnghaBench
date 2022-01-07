
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct list_head {int dummy; } ;
struct dapm_kcontrol_data {struct list_head paths; } ;


 struct dapm_kcontrol_data* snd_kcontrol_chip (struct snd_kcontrol const*) ;

__attribute__((used)) static struct list_head *dapm_kcontrol_get_path_list(
 const struct snd_kcontrol *kcontrol)
{
 struct dapm_kcontrol_data *data = snd_kcontrol_chip(kcontrol);

 return &data->paths;
}
