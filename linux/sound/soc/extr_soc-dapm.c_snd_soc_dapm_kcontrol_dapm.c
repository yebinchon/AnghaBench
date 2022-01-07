
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {TYPE_1__** widgets; } ;
struct TYPE_3__ {struct snd_soc_dapm_context* dapm; } ;


 TYPE_2__* dapm_kcontrol_get_wlist (struct snd_kcontrol*) ;

struct snd_soc_dapm_context *snd_soc_dapm_kcontrol_dapm(
 struct snd_kcontrol *kcontrol)
{
 return dapm_kcontrol_get_wlist(kcontrol)->widgets[0]->dapm;
}
