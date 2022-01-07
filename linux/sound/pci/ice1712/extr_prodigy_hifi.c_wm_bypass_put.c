
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int gpio_mutex; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int WM_OUT_MUX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned short wm_get (struct snd_ice1712*,int ) ;
 int wm_put (struct snd_ice1712*,int ,unsigned short) ;

__attribute__((used)) static int wm_bypass_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned short val, oval;
 int change = 0;

 mutex_lock(&ice->gpio_mutex);
 val = oval = wm_get(ice, WM_OUT_MUX);
 if (ucontrol->value.integer.value[0])
  val |= 0x04;
 else
  val &= ~0x04;
 if (val != oval) {
  wm_put(ice, WM_OUT_MUX, val);
  change = 1;
 }
 mutex_unlock(&ice->gpio_mutex);
 return change;
}
