
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {unsigned short* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 unsigned short PCM_MIN ;
 unsigned short PCM_RES ;
 int WM_DAC_DIG_MASTER_ATTEN ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm_get (struct snd_ice1712*,int ) ;
 int wm_put (struct snd_ice1712*,int ,unsigned short) ;
 int wm_put_nocache (struct snd_ice1712*,int ,unsigned short) ;

__attribute__((used)) static int wm_pcm_vol_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned short ovol, nvol;
 int change = 0;

 nvol = ucontrol->value.integer.value[0];
 if (nvol > PCM_RES)
  return -EINVAL;
 snd_ice1712_save_gpio_status(ice);
 nvol = (nvol ? (nvol + PCM_MIN) : 0) & 0xff;
 ovol = wm_get(ice, WM_DAC_DIG_MASTER_ATTEN) & 0xff;
 if (ovol != nvol) {
  wm_put(ice, WM_DAC_DIG_MASTER_ATTEN, nvol);
  wm_put_nocache(ice, WM_DAC_DIG_MASTER_ATTEN, nvol | 0x100);
  change = 1;
 }
 snd_ice1712_restore_gpio_status(ice);
 return change;
}
