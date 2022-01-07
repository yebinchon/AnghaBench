
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


 int INNO_R09 ;
 int INNO_R09_HPL_ANITPOP_SHIFT ;
 int INNO_R09_HPR_ANITPOP_SHIFT ;
 int INNO_R09_HP_ANTIPOP_MSK ;
 int INNO_R09_HP_ANTIPOP_ON ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_component_read (struct snd_soc_component*,int ,int*) ;

__attribute__((used)) static int rk3036_codec_antipop_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 int val, ret, regval;

 ret = snd_soc_component_read(component, INNO_R09, &regval);
 if (ret)
  return ret;
 val = ((regval >> INNO_R09_HPL_ANITPOP_SHIFT) &
        INNO_R09_HP_ANTIPOP_MSK) == INNO_R09_HP_ANTIPOP_ON;
 ucontrol->value.integer.value[0] = val;

 val = ((regval >> INNO_R09_HPR_ANITPOP_SHIFT) &
        INNO_R09_HP_ANTIPOP_MSK) == INNO_R09_HP_ANTIPOP_ON;
 ucontrol->value.integer.value[1] = val;

 return 0;
}
