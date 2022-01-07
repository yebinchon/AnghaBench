
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; struct generic_data* model_data; } ;
struct generic_data {unsigned int* wm8785_regs; } ;


 unsigned int WM8785_HPFL ;
 unsigned int WM8785_HPFR ;
 size_t WM8785_R2 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm8785_write (struct oxygen*,size_t,unsigned int) ;

__attribute__((used)) static int hpf_put(struct snd_kcontrol *ctl, struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct generic_data *data = chip->model_data;
 unsigned int reg;
 int changed;

 mutex_lock(&chip->mutex);
 reg = data->wm8785_regs[WM8785_R2] & ~(WM8785_HPFR | WM8785_HPFL);
 if (value->value.enumerated.item[0])
  reg |= WM8785_HPFR | WM8785_HPFL;
 changed = reg != data->wm8785_regs[WM8785_R2];
 if (changed)
  wm8785_write(chip, WM8785_R2, reg);
 mutex_unlock(&chip->mutex);
 return changed;
}
