
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int SGTL5000_CHIP_DAC_VOL ;
 int SGTL5000_DAC_VOL_LEFT_MASK ;
 int SGTL5000_DAC_VOL_LEFT_SHIFT ;
 int SGTL5000_DAC_VOL_RIGHT_MASK ;
 int SGTL5000_DAC_VOL_RIGHT_SHIFT ;
 int clamp (int,int,int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int dac_get_volsw(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 int reg;
 int l;
 int r;

 reg = snd_soc_component_read32(component, SGTL5000_CHIP_DAC_VOL);


 l = (reg & SGTL5000_DAC_VOL_LEFT_MASK) >> SGTL5000_DAC_VOL_LEFT_SHIFT;


 r = (reg & SGTL5000_DAC_VOL_RIGHT_MASK) >> SGTL5000_DAC_VOL_RIGHT_SHIFT;


 l = clamp(l, 0x3c, 0xfc);
 r = clamp(r, 0x3c, 0xfc);


 l = 0xfc - l;
 r = 0xfc - r;

 ucontrol->value.integer.value[0] = l;
 ucontrol->value.integer.value[1] = r;

 return 0;
}
