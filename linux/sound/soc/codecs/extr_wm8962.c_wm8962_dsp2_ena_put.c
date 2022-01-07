
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm8962_priv {int dsp2_ena; int dsp2_ena_lock; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int WM8962_DSP2_ENA ;
 int WM8962_DSP2_POWER_MANAGEMENT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wm8962_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int wm8962_dsp2_set_enable (struct snd_soc_component*,int) ;
 int wm8962_dsp2_stop (struct snd_soc_component*) ;

__attribute__((used)) static int wm8962_dsp2_ena_put(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 int shift = kcontrol->private_value;
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm8962_priv *wm8962 = snd_soc_component_get_drvdata(component);
 int old = wm8962->dsp2_ena;
 int ret = 0;
 int dsp2_running = snd_soc_component_read32(component, WM8962_DSP2_POWER_MANAGEMENT) &
  WM8962_DSP2_ENA;

 mutex_lock(&wm8962->dsp2_ena_lock);

 if (ucontrol->value.integer.value[0])
  wm8962->dsp2_ena |= 1 << shift;
 else
  wm8962->dsp2_ena &= ~(1 << shift);

 if (wm8962->dsp2_ena == old)
  goto out;

 ret = 1;

 if (dsp2_running) {
  if (wm8962->dsp2_ena)
   wm8962_dsp2_set_enable(component, wm8962->dsp2_ena);
  else
   wm8962_dsp2_stop(component);
 }

out:
 mutex_unlock(&wm8962->dsp2_ena_lock);

 return ret;
}
