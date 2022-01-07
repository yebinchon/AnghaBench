
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm8903_priv {unsigned int deemph; int lock; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wm8903_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int wm8903_set_deemph (struct snd_soc_component*) ;

__attribute__((used)) static int wm8903_put_deemph(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm8903_priv *wm8903 = snd_soc_component_get_drvdata(component);
 unsigned int deemph = ucontrol->value.integer.value[0];
 int ret = 0;

 if (deemph > 1)
  return -EINVAL;

 mutex_lock(&wm8903->lock);
 if (wm8903->deemph != deemph) {
  wm8903->deemph = deemph;

  wm8903_set_deemph(component);

  ret = 1;
 }
 mutex_unlock(&wm8903->lock);

 return ret;
}
