
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; int max; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;


 int gpio_set_value (int ,int) ;
 int mx27vis_amp_gain ;
 int mx27vis_amp_gain0_gpio ;
 int mx27vis_amp_gain1_gpio ;
 int mx27vis_amp_mute ;
 int mx27vis_amp_mutel_gpio ;
 int mx27vis_amp_muter_gpio ;

__attribute__((used)) static int mx27vis_amp_set(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 int value = ucontrol->value.integer.value[0];
 unsigned int reg = mc->reg;
 int max = mc->max;

 if (value > max)
  return -EINVAL;

 switch (reg) {
 case 129:
  gpio_set_value(mx27vis_amp_gain0_gpio, value & 1);
  gpio_set_value(mx27vis_amp_gain1_gpio, value >> 1);
  mx27vis_amp_gain = value;
  break;
 case 128:
  gpio_set_value(mx27vis_amp_mutel_gpio, value & 1);
  gpio_set_value(mx27vis_amp_muter_gpio, value >> 1);
  mx27vis_amp_mute = value;
  break;
 }
 return 0;
}
