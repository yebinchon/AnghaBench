
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct filter_control {unsigned int count; int * value; } ;
struct ab8500_codec_drvdata {int ctrl_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ab8500_codec_drvdata* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int filter_control_get(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct ab8500_codec_drvdata *drvdata = snd_soc_component_get_drvdata(component);
 struct filter_control *fc =
   (struct filter_control *)kcontrol->private_value;
 unsigned int i;

 mutex_lock(&drvdata->ctrl_lock);
 for (i = 0; i < fc->count; i++)
  ucontrol->value.integer.value[i] = fc->value[i];
 mutex_unlock(&drvdata->ctrl_lock);

 return 0;
}
