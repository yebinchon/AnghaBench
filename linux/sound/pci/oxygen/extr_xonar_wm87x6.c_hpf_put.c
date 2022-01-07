
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xonar_wm87x6 {unsigned int* wm8776_regs; } ;
struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct xonar_wm87x6* model_data; } ;


 unsigned int WM8776_ADCHPD ;
 size_t WM8776_ADCIFCTRL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm8776_write (struct oxygen*,size_t,unsigned int) ;

__attribute__((used)) static int hpf_put(struct snd_kcontrol *ctl, struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct xonar_wm87x6 *data = chip->model_data;
 unsigned int reg;
 int changed;

 mutex_lock(&chip->mutex);
 reg = data->wm8776_regs[WM8776_ADCIFCTRL] & ~WM8776_ADCHPD;
 if (!value->value.enumerated.item[0])
  reg |= WM8776_ADCHPD;
 changed = reg != data->wm8776_regs[WM8776_ADCIFCTRL];
 if (changed)
  wm8776_write(chip, WM8776_ADCIFCTRL, reg);
 mutex_unlock(&chip->mutex);
 return changed;
}
