
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5651_priv {int regmap; } ;


 scalar_t__ RT5651_CHPUMP_INT_REG1 ;
 scalar_t__ RT5651_DEPOP_M1 ;
 scalar_t__ RT5651_DEPOP_M2 ;
 int RT5651_DEPOP_MAN ;
 int RT5651_DEPOP_MASK ;
 int RT5651_HP_CB_MASK ;
 int RT5651_HP_CB_PU ;
 int RT5651_HP_CP_MASK ;
 int RT5651_HP_CP_PU ;
 scalar_t__ RT5651_HP_DCC_INT1 ;
 int RT5651_HP_SG_DIS ;
 int RT5651_HP_SG_MASK ;
 scalar_t__ RT5651_PR_BASE ;
 scalar_t__ RT5651_PWR_ANLG1 ;
 int RT5651_PWR_FV1 ;
 int RT5651_PWR_FV2 ;
 int RT5651_PWR_HA ;

 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int regmap_write (int ,scalar_t__,int) ;
 struct rt5651_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt5651_amp_power_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5651_priv *rt5651 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:

  regmap_update_bits(rt5651->regmap, RT5651_PR_BASE +
   RT5651_CHPUMP_INT_REG1, 0x0700, 0x0200);
  regmap_update_bits(rt5651->regmap, RT5651_DEPOP_M2,
   RT5651_DEPOP_MASK, RT5651_DEPOP_MAN);
  regmap_update_bits(rt5651->regmap, RT5651_DEPOP_M1,
   RT5651_HP_CP_MASK | RT5651_HP_SG_MASK |
   RT5651_HP_CB_MASK, RT5651_HP_CP_PU |
   RT5651_HP_SG_DIS | RT5651_HP_CB_PU);
  regmap_write(rt5651->regmap, RT5651_PR_BASE +
    RT5651_HP_DCC_INT1, 0x9f00);

  regmap_update_bits(rt5651->regmap, RT5651_PWR_ANLG1,
   RT5651_PWR_FV1 | RT5651_PWR_FV2, 0);
  regmap_update_bits(rt5651->regmap, RT5651_PWR_ANLG1,
   RT5651_PWR_HA,
   RT5651_PWR_HA);
  usleep_range(10000, 15000);
  regmap_update_bits(rt5651->regmap, RT5651_PWR_ANLG1,
   RT5651_PWR_FV1 | RT5651_PWR_FV2 ,
   RT5651_PWR_FV1 | RT5651_PWR_FV2);
  break;

 default:
  return 0;
 }

 return 0;
}
