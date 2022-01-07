
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ak4458_priv {int digfil; } ;


 int AK4458_01_CONTROL2 ;
 int AK4458_02_CONTROL3 ;
 int AK4458_05_CONTROL4 ;
 int AK4458_SD_MASK ;
 int AK4458_SLOW_MASK ;
 int AK4458_SSLOW_MASK ;
 int EINVAL ;
 struct ak4458_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int set_digfil(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct ak4458_priv *ak4458 = snd_soc_component_get_drvdata(component);
 int num;

 num = ucontrol->value.enumerated.item[0];
 if (num > 4)
  return -EINVAL;

 ak4458->digfil = num;


 snd_soc_component_update_bits(component, AK4458_01_CONTROL2,
       AK4458_SD_MASK,
       ((ak4458->digfil & 0x02) << 4));


 snd_soc_component_update_bits(component, AK4458_02_CONTROL3,
       AK4458_SLOW_MASK,
       (ak4458->digfil & 0x01));


 snd_soc_component_update_bits(component, AK4458_05_CONTROL4,
       AK4458_SSLOW_MASK,
       ((ak4458->digfil & 0x04) >> 2));

 return 0;
}
