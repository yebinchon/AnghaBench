
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int WM_OUT_MUX1 ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned short wm_get (struct snd_ice1712*,int ) ;
 int wm_put (struct snd_ice1712*,int ,unsigned short) ;

__attribute__((used)) static int aureon_ac97_mmute_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned short ovol, nvol;
 int change;

 snd_ice1712_save_gpio_status(ice);

 ovol = wm_get(ice, WM_OUT_MUX1);
 nvol = (ovol & ~0x02) | (ucontrol->value.integer.value[0] ? 0x02 : 0x00);
 change = (ovol != nvol);
 if (change)
  wm_put(ice, WM_OUT_MUX1, nvol);

 snd_ice1712_restore_gpio_status(ice);

 return change;
}
