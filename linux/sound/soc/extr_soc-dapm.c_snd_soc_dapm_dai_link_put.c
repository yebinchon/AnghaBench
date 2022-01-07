
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {scalar_t__ params_select; TYPE_1__* dai_link; } ;
struct snd_soc_dapm_widget {scalar_t__ power; struct snd_soc_pcm_runtime* priv; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {scalar_t__* item; } ;
struct TYPE_5__ {TYPE_3__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_4__ {scalar_t__ num_params; } ;


 int EBUSY ;
 int EINVAL ;
 struct snd_soc_dapm_widget* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_soc_dapm_dai_link_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_widget *w = snd_kcontrol_chip(kcontrol);
 struct snd_soc_pcm_runtime *rtd = w->priv;


 if (w->power)
  return -EBUSY;

 if (ucontrol->value.enumerated.item[0] == rtd->params_select)
  return 0;

 if (ucontrol->value.enumerated.item[0] >= rtd->dai_link->num_params)
  return -EINVAL;

 rtd->params_select = ucontrol->value.enumerated.item[0];

 return 0;
}
