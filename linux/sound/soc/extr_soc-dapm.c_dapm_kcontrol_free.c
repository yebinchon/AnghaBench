
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct dapm_kcontrol_data {struct dapm_kcontrol_data* wlist; int paths; } ;


 int kfree (struct dapm_kcontrol_data*) ;
 int list_del (int *) ;
 struct dapm_kcontrol_data* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static void dapm_kcontrol_free(struct snd_kcontrol *kctl)
{
 struct dapm_kcontrol_data *data = snd_kcontrol_chip(kctl);

 list_del(&data->paths);
 kfree(data->wlist);
 kfree(data);
}
