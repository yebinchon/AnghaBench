
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5514_priv {int pll3_cal_value; int regmap; } ;


 int RT5514_ANA_CTRL_PLL3 ;
 int RT5514_PLL3_CALIB_CTRL1 ;
 int RT5514_PLL3_CALIB_CTRL4 ;
 int RT5514_PLL3_CALIB_CTRL5 ;
 int RT5514_PLL_SOURCE_CTRL ;
 int RT5514_PWR_ANA1 ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int rt5514_calibration(struct rt5514_priv *rt5514, bool on)
{
 if (on) {
  regmap_write(rt5514->regmap, RT5514_ANA_CTRL_PLL3, 0x0000000a);
  regmap_update_bits(rt5514->regmap, RT5514_PLL_SOURCE_CTRL, 0xf,
   0xa);
  regmap_update_bits(rt5514->regmap, RT5514_PWR_ANA1, 0x301,
   0x301);
  regmap_write(rt5514->regmap, RT5514_PLL3_CALIB_CTRL4,
   0x80000000 | rt5514->pll3_cal_value);
  regmap_write(rt5514->regmap, RT5514_PLL3_CALIB_CTRL1,
   0x8bb80800);
  regmap_update_bits(rt5514->regmap, RT5514_PLL3_CALIB_CTRL5,
   0xc0000000, 0x80000000);
  regmap_update_bits(rt5514->regmap, RT5514_PLL3_CALIB_CTRL5,
   0xc0000000, 0xc0000000);
 } else {
  regmap_update_bits(rt5514->regmap, RT5514_PLL3_CALIB_CTRL5,
   0xc0000000, 0x40000000);
  regmap_update_bits(rt5514->regmap, RT5514_PWR_ANA1, 0x301, 0);
  regmap_update_bits(rt5514->regmap, RT5514_PLL_SOURCE_CTRL, 0xf,
   0x4);
 }

 return 0;
}
