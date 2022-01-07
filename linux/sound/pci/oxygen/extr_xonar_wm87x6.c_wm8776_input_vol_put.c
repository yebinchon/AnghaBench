
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xonar_wm87x6 {int* wm8776_regs; } ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct xonar_wm87x6* model_data; } ;


 size_t WM8776_ADCLVOL ;
 size_t WM8776_ADCRVOL ;
 int WM8776_AGMASK ;
 int WM8776_ZCA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm8776_write_cached (struct oxygen*,size_t,int) ;

__attribute__((used)) static int wm8776_input_vol_put(struct snd_kcontrol *ctl,
    struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct xonar_wm87x6 *data = chip->model_data;
 int changed = 0;

 mutex_lock(&chip->mutex);
 changed = (value->value.integer.value[0] !=
     (data->wm8776_regs[WM8776_ADCLVOL] & WM8776_AGMASK)) ||
    (value->value.integer.value[1] !=
     (data->wm8776_regs[WM8776_ADCRVOL] & WM8776_AGMASK));
 wm8776_write_cached(chip, WM8776_ADCLVOL,
       value->value.integer.value[0] | WM8776_ZCA);
 wm8776_write_cached(chip, WM8776_ADCRVOL,
       value->value.integer.value[1] | WM8776_ZCA);
 mutex_unlock(&chip->mutex);
 return changed;
}
