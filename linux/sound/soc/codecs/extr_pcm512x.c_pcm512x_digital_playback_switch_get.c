
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct pcm512x_priv {int mute; int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pcm512x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int pcm512x_digital_playback_switch_get(struct snd_kcontrol *kcontrol,
            struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct pcm512x_priv *pcm512x = snd_soc_component_get_drvdata(component);

 mutex_lock(&pcm512x->mutex);
 ucontrol->value.integer.value[0] = !(pcm512x->mute & 0x4);
 ucontrol->value.integer.value[1] = !(pcm512x->mute & 0x2);
 mutex_unlock(&pcm512x->mutex);

 return 0;
}
