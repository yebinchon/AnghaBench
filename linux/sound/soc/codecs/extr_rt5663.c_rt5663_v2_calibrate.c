
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5663_priv {int regmap; } ;


 int RT5663_ADDA_CLK_1 ;
 int RT5663_BIAS_CUR_8 ;
 int RT5663_CALIB_ADC ;
 int RT5663_CHOP_DAC_L ;
 int RT5663_DIG_MISC ;
 int RT5663_GLB_CLK ;
 int RT5663_HP_CALIB_1 ;
 int RT5663_HP_CALIB_2 ;
 int RT5663_PWR_ANLG_1 ;
 int RT5663_PWR_DIG_1 ;
 int RT5663_RC_CLK ;
 int RT5663_RECMIX ;
 int msleep (int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void rt5663_v2_calibrate(struct rt5663_priv *rt5663)
{
 regmap_write(rt5663->regmap, RT5663_BIAS_CUR_8, 0xa402);
 regmap_write(rt5663->regmap, RT5663_PWR_DIG_1, 0x0100);
 regmap_write(rt5663->regmap, RT5663_RECMIX, 0x4040);
 regmap_write(rt5663->regmap, RT5663_DIG_MISC, 0x0001);
 regmap_write(rt5663->regmap, RT5663_RC_CLK, 0x0380);
 regmap_write(rt5663->regmap, RT5663_GLB_CLK, 0x8000);
 regmap_write(rt5663->regmap, RT5663_ADDA_CLK_1, 0x1000);
 regmap_write(rt5663->regmap, RT5663_CHOP_DAC_L, 0x3030);
 regmap_write(rt5663->regmap, RT5663_CALIB_ADC, 0x3c05);
 regmap_write(rt5663->regmap, RT5663_PWR_ANLG_1, 0xa23e);
 msleep(40);
 regmap_write(rt5663->regmap, RT5663_PWR_ANLG_1, 0xf23e);
 regmap_write(rt5663->regmap, RT5663_HP_CALIB_2, 0x0321);
 regmap_write(rt5663->regmap, RT5663_HP_CALIB_1, 0xfc00);
 msleep(500);
}
