
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5640_priv {int regmap; } ;


 scalar_t__ RT5640_CHPUMP_INT_REG1 ;
 scalar_t__ RT5640_DEPOP_M1 ;
 scalar_t__ RT5640_DEPOP_M2 ;
 int RT5640_DEPOP_MAN ;
 int RT5640_DEPOP_MASK ;
 int RT5640_HP_CB_MASK ;
 int RT5640_HP_CB_PU ;
 int RT5640_HP_CP_MASK ;
 int RT5640_HP_CP_PU ;
 scalar_t__ RT5640_HP_DCC_INT1 ;
 int RT5640_HP_SG_DIS ;
 int RT5640_HP_SG_MASK ;
 scalar_t__ RT5640_PR_BASE ;
 scalar_t__ RT5640_PWR_ANLG1 ;
 int RT5640_PWR_FV1 ;
 int RT5640_PWR_FV2 ;
 int RT5640_PWR_HA ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int regmap_write (int ,scalar_t__,int) ;
 struct rt5640_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hp_amp_power_on(struct snd_soc_component *component)
{
 struct rt5640_priv *rt5640 = snd_soc_component_get_drvdata(component);


 regmap_update_bits(rt5640->regmap, RT5640_PR_BASE +
  RT5640_CHPUMP_INT_REG1, 0x0700, 0x0200);
 regmap_update_bits(rt5640->regmap, RT5640_DEPOP_M2,
  RT5640_DEPOP_MASK, RT5640_DEPOP_MAN);
 regmap_update_bits(rt5640->regmap, RT5640_DEPOP_M1,
  RT5640_HP_CP_MASK | RT5640_HP_SG_MASK | RT5640_HP_CB_MASK,
  RT5640_HP_CP_PU | RT5640_HP_SG_DIS | RT5640_HP_CB_PU);
 regmap_write(rt5640->regmap, RT5640_PR_BASE + RT5640_HP_DCC_INT1,
      0x9f00);

 regmap_update_bits(rt5640->regmap, RT5640_PWR_ANLG1,
  RT5640_PWR_FV1 | RT5640_PWR_FV2, 0);
 regmap_update_bits(rt5640->regmap, RT5640_PWR_ANLG1,
  RT5640_PWR_HA,
  RT5640_PWR_HA);
 usleep_range(10000, 15000);
 regmap_update_bits(rt5640->regmap, RT5640_PWR_ANLG1,
  RT5640_PWR_FV1 | RT5640_PWR_FV2 ,
  RT5640_PWR_FV1 | RT5640_PWR_FV2);
}
