
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int params_select; } ;
struct snd_soc_dapm_widget {struct snd_soc_pcm_runtime* priv; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_soc_dapm_widget* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_soc_dapm_dai_link_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_widget *w = snd_kcontrol_chip(kcontrol);
 struct snd_soc_pcm_runtime *rtd = w->priv;

 ucontrol->value.enumerated.item[0] = rtd->params_select;

 return 0;
}
