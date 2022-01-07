
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5668_priv {int calibrate_mutex; int regmap; } ;


 int RT5668_ADC_STO1_HP_CTRL_1 ;
 int RT5668_A_DAC1_MUX ;
 int RT5668_CALIB_ADC_CTRL ;
 int RT5668_CAL_REC ;
 int RT5668_CHOP_DAC ;
 int RT5668_DEPOP_1 ;
 int RT5668_HP_CALIB_CTRL_1 ;
 int RT5668_HP_CALIB_CTRL_2 ;
 int RT5668_HP_CALIB_CTRL_3 ;
 int RT5668_HP_CALIB_CTRL_9 ;
 int RT5668_HP_CALIB_STA_1 ;
 int RT5668_HP_CHARGE_PUMP_1 ;
 int RT5668_HP_CTRL_2 ;
 int RT5668_HP_LOGIC_CTRL_2 ;
 int RT5668_MICBIAS_2 ;
 int RT5668_PWR_ANLG_1 ;
 int RT5668_PWR_DIG_1 ;
 int RT5668_RESET_HPF_CTRL ;
 int RT5668_STO1_ADC_MIXER ;
 int RT5668_STO1_DAC_MIXER ;
 int RT5668_TEST_MODE_CTRL_1 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int rt5668_reset (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rt5668_calibrate(struct rt5668_priv *rt5668)
{
 int value, count;

 mutex_lock(&rt5668->calibrate_mutex);

 rt5668_reset(rt5668->regmap);
 regmap_write(rt5668->regmap, RT5668_PWR_ANLG_1, 0xa2bf);
 usleep_range(15000, 20000);
 regmap_write(rt5668->regmap, RT5668_PWR_ANLG_1, 0xf2bf);
 regmap_write(rt5668->regmap, RT5668_MICBIAS_2, 0x0380);
 regmap_write(rt5668->regmap, RT5668_PWR_DIG_1, 0x8001);
 regmap_write(rt5668->regmap, RT5668_TEST_MODE_CTRL_1, 0x0000);
 regmap_write(rt5668->regmap, RT5668_STO1_DAC_MIXER, 0x2080);
 regmap_write(rt5668->regmap, RT5668_STO1_ADC_MIXER, 0x4040);
 regmap_write(rt5668->regmap, RT5668_DEPOP_1, 0x0069);
 regmap_write(rt5668->regmap, RT5668_CHOP_DAC, 0x3000);
 regmap_write(rt5668->regmap, RT5668_HP_CTRL_2, 0x6000);
 regmap_write(rt5668->regmap, RT5668_HP_CHARGE_PUMP_1, 0x0f26);
 regmap_write(rt5668->regmap, RT5668_CALIB_ADC_CTRL, 0x7f05);
 regmap_write(rt5668->regmap, RT5668_STO1_ADC_MIXER, 0x686c);
 regmap_write(rt5668->regmap, RT5668_CAL_REC, 0x0d0d);
 regmap_write(rt5668->regmap, RT5668_HP_CALIB_CTRL_9, 0x000f);
 regmap_write(rt5668->regmap, RT5668_PWR_DIG_1, 0x8d01);
 regmap_write(rt5668->regmap, RT5668_HP_CALIB_CTRL_2, 0x0321);
 regmap_write(rt5668->regmap, RT5668_HP_LOGIC_CTRL_2, 0x0004);
 regmap_write(rt5668->regmap, RT5668_HP_CALIB_CTRL_1, 0x7c00);
 regmap_write(rt5668->regmap, RT5668_HP_CALIB_CTRL_3, 0x06a1);
 regmap_write(rt5668->regmap, RT5668_A_DAC1_MUX, 0x0311);
 regmap_write(rt5668->regmap, RT5668_RESET_HPF_CTRL, 0x0000);
 regmap_write(rt5668->regmap, RT5668_ADC_STO1_HP_CTRL_1, 0x3320);

 regmap_write(rt5668->regmap, RT5668_HP_CALIB_CTRL_1, 0xfc00);

 for (count = 0; count < 60; count++) {
  regmap_read(rt5668->regmap, RT5668_HP_CALIB_STA_1, &value);
  if (!(value & 0x8000))
   break;

  usleep_range(10000, 10005);
 }

 if (count >= 60)
  pr_err("HP Calibration Failure\n");


 regmap_write(rt5668->regmap, RT5668_STO1_ADC_MIXER, 0xc0c4);
 regmap_write(rt5668->regmap, RT5668_PWR_DIG_1, 0x0000);

 mutex_unlock(&rt5668->calibrate_mutex);

}
