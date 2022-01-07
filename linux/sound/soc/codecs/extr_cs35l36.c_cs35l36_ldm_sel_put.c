
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cs35l36_private {int ldm_mode_sel; int regmap; } ;


 int CS35L36_NG_AMP_EN_MASK ;
 int CS35L36_NG_CFG ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct cs35l36_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int cs35l36_ldm_sel_put(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
   snd_soc_kcontrol_component(kcontrol);
 struct cs35l36_private *cs35l36 =
   snd_soc_component_get_drvdata(component);
 int val = (ucontrol->value.integer.value[0]) ? CS35L36_NG_AMP_EN_MASK :
             0;

 cs35l36->ldm_mode_sel = val;

 regmap_update_bits(cs35l36->regmap, CS35L36_NG_CFG,
      CS35L36_NG_AMP_EN_MASK, val);

 return 0;
}
