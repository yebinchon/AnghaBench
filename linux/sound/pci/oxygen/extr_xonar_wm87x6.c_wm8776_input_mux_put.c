
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u16 ;
struct xonar_wm87x6 {unsigned int* wm8776_regs; struct snd_kcontrol* mic_adcmux_control; struct snd_kcontrol* line_adcmux_control; } ;
struct snd_kcontrol {unsigned int private_value; int id; struct oxygen* private_data; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; int card; struct xonar_wm87x6* model_data; } ;


 int GPIO_DS_INPUT_ROUTE ;
 int OXYGEN_GPIO_DATA ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 size_t WM8776_ADCMUX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_write16_masked (struct oxygen*,int ,int ,int ) ;
 int snd_ctl_notify (int ,int ,int *) ;
 int wm8776_write (struct oxygen*,size_t,unsigned int) ;

__attribute__((used)) static int wm8776_input_mux_put(struct snd_kcontrol *ctl,
    struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 struct xonar_wm87x6 *data = chip->model_data;
 struct snd_kcontrol *other_ctl;
 unsigned int mux_bit = ctl->private_value;
 u16 reg;
 int changed;

 mutex_lock(&chip->mutex);
 reg = data->wm8776_regs[WM8776_ADCMUX];
 if (value->value.integer.value[0]) {
  reg |= mux_bit;

  mux_bit ^= 3;
  if (reg & mux_bit) {
   reg &= ~mux_bit;
   if (mux_bit == 1)
    other_ctl = data->line_adcmux_control;
   else
    other_ctl = data->mic_adcmux_control;
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &other_ctl->id);
  }
 } else
  reg &= ~mux_bit;
 changed = reg != data->wm8776_regs[WM8776_ADCMUX];
 if (changed) {
  oxygen_write16_masked(chip, OXYGEN_GPIO_DATA,
          reg & 1 ? GPIO_DS_INPUT_ROUTE : 0,
          GPIO_DS_INPUT_ROUTE);
  wm8776_write(chip, WM8776_ADCMUX, reg);
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
