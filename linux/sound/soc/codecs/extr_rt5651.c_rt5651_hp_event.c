
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5651_priv {int hp_mute; int regmap; } ;


 scalar_t__ RT5651_CHARGE_PUMP ;
 scalar_t__ RT5651_CHPUMP_INT_REG1 ;
 int RT5651_CP_FQ1_MASK ;
 int RT5651_CP_FQ1_SFT ;
 int RT5651_CP_FQ2_MASK ;
 int RT5651_CP_FQ2_SFT ;
 int RT5651_CP_FQ3_MASK ;
 int RT5651_CP_FQ3_SFT ;
 int RT5651_CP_FQ_12_KHZ ;
 int RT5651_CP_FQ_192_KHZ ;
 int RT5651_DEPOP_AUTO ;
 scalar_t__ RT5651_DEPOP_M1 ;
 scalar_t__ RT5651_DEPOP_M2 ;
 scalar_t__ RT5651_DEPOP_M3 ;
 int RT5651_DEPOP_MASK ;
 int RT5651_DIG_DP_EN ;
 int RT5651_DIG_DP_MASK ;
 int RT5651_HP_CP_MASK ;
 int RT5651_HP_CP_PD ;
 int RT5651_HP_SG_EN ;
 int RT5651_HP_SG_MASK ;
 scalar_t__ RT5651_MAMP_INT_REG2 ;
 int RT5651_PM_HP_HV ;
 int RT5651_PM_HP_MASK ;
 scalar_t__ RT5651_PR_BASE ;


 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int regmap_write (int ,scalar_t__,int) ;
 struct rt5651_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt5651_hp_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5651_priv *rt5651 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 129:

  regmap_update_bits(rt5651->regmap, RT5651_DEPOP_M2,
   RT5651_DEPOP_MASK | RT5651_DIG_DP_MASK,
   RT5651_DEPOP_AUTO | RT5651_DIG_DP_EN);
  regmap_update_bits(rt5651->regmap, RT5651_CHARGE_PUMP,
   RT5651_PM_HP_MASK, RT5651_PM_HP_HV);

  regmap_update_bits(rt5651->regmap, RT5651_DEPOP_M3,
   RT5651_CP_FQ1_MASK | RT5651_CP_FQ2_MASK |
   RT5651_CP_FQ3_MASK,
   (RT5651_CP_FQ_192_KHZ << RT5651_CP_FQ1_SFT) |
   (RT5651_CP_FQ_12_KHZ << RT5651_CP_FQ2_SFT) |
   (RT5651_CP_FQ_192_KHZ << RT5651_CP_FQ3_SFT));

  regmap_write(rt5651->regmap, RT5651_PR_BASE +
   RT5651_MAMP_INT_REG2, 0x1c00);
  regmap_update_bits(rt5651->regmap, RT5651_DEPOP_M1,
   RT5651_HP_CP_MASK | RT5651_HP_SG_MASK,
   RT5651_HP_CP_PD | RT5651_HP_SG_EN);
  regmap_update_bits(rt5651->regmap, RT5651_PR_BASE +
   RT5651_CHPUMP_INT_REG1, 0x0700, 0x0400);
  rt5651->hp_mute = 0;
  break;

 case 128:
  rt5651->hp_mute = 1;
  usleep_range(70000, 75000);
  break;

 default:
  return 0;
 }

 return 0;
}
