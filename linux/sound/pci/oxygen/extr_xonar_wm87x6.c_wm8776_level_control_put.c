
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct xonar_wm87x6 {int* wm8776_regs; int * lc_controls; } ;
struct snd_kcontrol {int private_value; struct oxygen* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct xonar_wm87x6* model_data; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int EINVAL ;
 unsigned int LC_CONTROL_ALC ;
 unsigned int LC_CONTROL_LIMITER ;
 size_t WM8776_ALCCTRL1 ;
 size_t WM8776_ALCCTRL2 ;
 int WM8776_LCEN ;
 int WM8776_LCSEL_ALC_STEREO ;
 int WM8776_LCSEL_LIMITER ;
 int WM8776_LCSEL_MASK ;
 int activate_control (struct oxygen*,int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm8776_write_cached (struct oxygen*,size_t,int) ;

__attribute__((used)) static int wm8776_level_control_put(struct snd_kcontrol *ctl,
        struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct xonar_wm87x6 *data = chip->model_data;
 unsigned int mode = 0, i;
 u16 ctrl1, ctrl2;
 int changed;

 if (value->value.enumerated.item[0] >= 3)
  return -EINVAL;
 mutex_lock(&chip->mutex);
 changed = value->value.enumerated.item[0] != ctl->private_value;
 if (changed) {
  ctl->private_value = value->value.enumerated.item[0];
  ctrl1 = data->wm8776_regs[WM8776_ALCCTRL1];
  ctrl2 = data->wm8776_regs[WM8776_ALCCTRL2];
  switch (value->value.enumerated.item[0]) {
  default:
   wm8776_write_cached(chip, WM8776_ALCCTRL2,
         ctrl2 & ~WM8776_LCEN);
   break;
  case 1:
   wm8776_write_cached(chip, WM8776_ALCCTRL1,
         (ctrl1 & ~WM8776_LCSEL_MASK) |
         WM8776_LCSEL_LIMITER);
   wm8776_write_cached(chip, WM8776_ALCCTRL2,
         ctrl2 | WM8776_LCEN);
   mode = LC_CONTROL_LIMITER;
   break;
  case 2:
   wm8776_write_cached(chip, WM8776_ALCCTRL1,
         (ctrl1 & ~WM8776_LCSEL_MASK) |
         WM8776_LCSEL_ALC_STEREO);
   wm8776_write_cached(chip, WM8776_ALCCTRL2,
         ctrl2 | WM8776_LCEN);
   mode = LC_CONTROL_ALC;
   break;
  }
  for (i = 0; i < ARRAY_SIZE(data->lc_controls); ++i)
   activate_control(chip, data->lc_controls[i], mode);
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
