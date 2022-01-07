
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_path {int list_kcontrol; } ;
struct snd_kcontrol {int dummy; } ;
struct dapm_kcontrol_data {int paths; } ;


 int list_add_tail (int *,int *) ;
 struct dapm_kcontrol_data* snd_kcontrol_chip (struct snd_kcontrol const*) ;

__attribute__((used)) static void dapm_kcontrol_add_path(const struct snd_kcontrol *kcontrol,
 struct snd_soc_dapm_path *path)
{
 struct dapm_kcontrol_data *data = snd_kcontrol_chip(kcontrol);

 list_add_tail(&path->list_kcontrol, &data->paths);
}
