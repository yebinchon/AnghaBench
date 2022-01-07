
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int gpio_mutex; } ;
struct TYPE_3__ {unsigned short* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned short PCM_MIN ;
 int WM_DAC_DIG_MASTER_ATTEN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm_get (struct snd_ice1712*,int ) ;

__attribute__((used)) static int wm_pcm_vol_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned short val;

 mutex_lock(&ice->gpio_mutex);
 val = wm_get(ice, WM_DAC_DIG_MASTER_ATTEN) & 0xff;
 val = val > PCM_MIN ? (val - PCM_MIN) : 0;
 ucontrol->value.integer.value[0] = val;
 mutex_unlock(&ice->gpio_mutex);
 return 0;
}
