
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_hal2 {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int H2I_ADC_C2 ;
 int H2I_C2_L_ATT_M ;
 int H2I_C2_L_ATT_SHIFT ;
 int H2I_C2_L_GAIN_M ;
 int H2I_C2_L_GAIN_SHIFT ;
 int H2I_C2_MUTE ;
 int H2I_C2_R_ATT_M ;
 int H2I_C2_R_ATT_SHIFT ;
 int H2I_C2_R_GAIN_M ;
 int H2I_C2_R_GAIN_SHIFT ;
 int H2I_DAC_C2 ;


 int hal2_i_read32 (struct snd_hal2*,int ) ;
 int hal2_i_write32 (struct snd_hal2*,int ,int) ;
 struct snd_hal2* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int hal2_gain_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_hal2 *hal2 = snd_kcontrol_chip(kcontrol);
 u32 old, new;
 int l, r;

 l = ucontrol->value.integer.value[0];
 r = ucontrol->value.integer.value[1];

 switch ((int)kcontrol->private_value) {
 case 128:
  old = hal2_i_read32(hal2, H2I_DAC_C2);
  new = old & ~(H2I_C2_L_ATT_M | H2I_C2_R_ATT_M | H2I_C2_MUTE);
  if (l | r) {
   l = 31 - l;
   r = 31 - r;
   new |= (l << H2I_C2_L_ATT_SHIFT);
   new |= (r << H2I_C2_R_ATT_SHIFT);
  } else
   new |= H2I_C2_L_ATT_M | H2I_C2_R_ATT_M | H2I_C2_MUTE;
  hal2_i_write32(hal2, H2I_DAC_C2, new);
  break;
 case 129:
  old = hal2_i_read32(hal2, H2I_ADC_C2);
  new = old & ~(H2I_C2_L_GAIN_M | H2I_C2_R_GAIN_M);
  new |= (l << H2I_C2_L_GAIN_SHIFT);
  new |= (r << H2I_C2_R_GAIN_SHIFT);
  hal2_i_write32(hal2, H2I_ADC_C2, new);
  break;
 default:
  return -EINVAL;
 }
 return old != new;
}
