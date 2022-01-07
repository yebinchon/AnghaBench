
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget_list {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct dapm_kcontrol_data {struct snd_soc_dapm_widget_list* wlist; } ;


 struct dapm_kcontrol_data* snd_kcontrol_chip (struct snd_kcontrol const*) ;

__attribute__((used)) static struct snd_soc_dapm_widget_list *dapm_kcontrol_get_wlist(
 const struct snd_kcontrol *kcontrol)
{
 struct dapm_kcontrol_data *data = snd_kcontrol_chip(kcontrol);

 return data->wlist;
}
