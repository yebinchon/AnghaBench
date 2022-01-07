
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm2000_priv {unsigned int anc_active; int lock; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 struct wm2000_priv* dev_get_drvdata (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int wm2000_anc_set_mode (struct wm2000_priv*) ;

__attribute__((used)) static int wm2000_anc_mode_put(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm2000_priv *wm2000 = dev_get_drvdata(component->dev);
 unsigned int anc_active = ucontrol->value.integer.value[0];
 int ret;

 if (anc_active > 1)
  return -EINVAL;

 mutex_lock(&wm2000->lock);

 wm2000->anc_active = anc_active;

 ret = wm2000_anc_set_mode(wm2000);

 mutex_unlock(&wm2000->lock);

 return ret;
}
