
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int SGTL5000_CHIP_DAC_VOL ;
 int SGTL5000_DAC_VOL_LEFT_SHIFT ;
 int SGTL5000_DAC_VOL_RIGHT_SHIFT ;
 int clamp (int,int ,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int dac_put_volsw(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 int reg;
 int l;
 int r;

 l = ucontrol->value.integer.value[0];
 r = ucontrol->value.integer.value[1];


 l = clamp(l, 0, 0xfc - 0x3c);
 r = clamp(r, 0, 0xfc - 0x3c);


 l = 0xfc - l;
 r = 0xfc - r;


 reg = l << SGTL5000_DAC_VOL_LEFT_SHIFT |
  r << SGTL5000_DAC_VOL_RIGHT_SHIFT;

 snd_soc_component_write(component, SGTL5000_CHIP_DAC_VOL, reg);

 return 0;
}
