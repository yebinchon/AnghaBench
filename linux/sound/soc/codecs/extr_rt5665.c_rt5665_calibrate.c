
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5665_priv {int calibration_done; int calibrate_mutex; int regmap; } ;


 int RT5665_ADDA_CLK_1 ;
 int RT5665_ASRC_8 ;
 int RT5665_BIAS_CUR_CTRL_8 ;
 int RT5665_CALIB_ADC_CTRL ;
 int RT5665_CHOP_DAC ;
 int RT5665_DIG_MISC ;
 int RT5665_EJD_CTRL_1 ;
 int RT5665_GLB_CLK ;
 int RT5665_HP_CALIB_CTRL_1 ;
 int RT5665_HP_CALIB_CTRL_2 ;
 int RT5665_HP_CALIB_STA_1 ;
 int RT5665_HP_CHARGE_PUMP_1 ;
 int RT5665_HP_LOGIC_CTRL_2 ;
 int RT5665_MICBIAS_2 ;
 int RT5665_MONOMIX_IN_GAIN ;
 int RT5665_MONO_AMP_CALIB_CTRL_1 ;
 int RT5665_MONO_AMP_CALIB_STA1 ;
 int RT5665_MONO_OUT ;
 int RT5665_PWR_ANLG_1 ;
 int RT5665_PWR_DIG_1 ;
 int RT5665_PWR_MIXER ;
 int RT5665_RESET ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int regcache_cache_bypass (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rt5665_calibrate(struct rt5665_priv *rt5665)
{
 int value, count;

 mutex_lock(&rt5665->calibrate_mutex);

 regcache_cache_bypass(rt5665->regmap, 1);

 regmap_write(rt5665->regmap, RT5665_RESET, 0);
 regmap_write(rt5665->regmap, RT5665_BIAS_CUR_CTRL_8, 0xa602);
 regmap_write(rt5665->regmap, RT5665_HP_CHARGE_PUMP_1, 0x0c26);
 regmap_write(rt5665->regmap, RT5665_MONOMIX_IN_GAIN, 0x021f);
 regmap_write(rt5665->regmap, RT5665_MONO_OUT, 0x480a);
 regmap_write(rt5665->regmap, RT5665_PWR_MIXER, 0x083f);
 regmap_write(rt5665->regmap, RT5665_PWR_DIG_1, 0x0180);
 regmap_write(rt5665->regmap, RT5665_EJD_CTRL_1, 0x4040);
 regmap_write(rt5665->regmap, RT5665_HP_LOGIC_CTRL_2, 0x0000);
 regmap_write(rt5665->regmap, RT5665_DIG_MISC, 0x0001);
 regmap_write(rt5665->regmap, RT5665_MICBIAS_2, 0x0380);
 regmap_write(rt5665->regmap, RT5665_GLB_CLK, 0x8000);
 regmap_write(rt5665->regmap, RT5665_ADDA_CLK_1, 0x1000);
 regmap_write(rt5665->regmap, RT5665_CHOP_DAC, 0x3030);
 regmap_write(rt5665->regmap, RT5665_CALIB_ADC_CTRL, 0x3c05);
 regmap_write(rt5665->regmap, RT5665_PWR_ANLG_1, 0xaa3e);
 usleep_range(15000, 20000);
 regmap_write(rt5665->regmap, RT5665_PWR_ANLG_1, 0xfe7e);
 regmap_write(rt5665->regmap, RT5665_HP_CALIB_CTRL_2, 0x0321);

 regmap_write(rt5665->regmap, RT5665_HP_CALIB_CTRL_1, 0xfc00);
 count = 0;
 while (1) {
  regmap_read(rt5665->regmap, RT5665_HP_CALIB_STA_1, &value);
  if (value & 0x8000)
   usleep_range(10000, 10005);
  else
   break;

  if (count > 60) {
   pr_err("HP Calibration Failure\n");
   regmap_write(rt5665->regmap, RT5665_RESET, 0);
   regcache_cache_bypass(rt5665->regmap, 0);
   goto out_unlock;
  }

  count++;
 }

 regmap_write(rt5665->regmap, RT5665_MONO_AMP_CALIB_CTRL_1, 0x9e24);
 count = 0;
 while (1) {
  regmap_read(rt5665->regmap, RT5665_MONO_AMP_CALIB_STA1, &value);
  if (value & 0x8000)
   usleep_range(10000, 10005);
  else
   break;

  if (count > 60) {
   pr_err("MONO Calibration Failure\n");
   regmap_write(rt5665->regmap, RT5665_RESET, 0);
   regcache_cache_bypass(rt5665->regmap, 0);
   goto out_unlock;
  }

  count++;
 }

 regmap_write(rt5665->regmap, RT5665_RESET, 0);
 regcache_cache_bypass(rt5665->regmap, 0);

 regcache_mark_dirty(rt5665->regmap);
 regcache_sync(rt5665->regmap);

 regmap_write(rt5665->regmap, RT5665_BIAS_CUR_CTRL_8, 0xa602);
 regmap_write(rt5665->regmap, RT5665_ASRC_8, 0x0120);

out_unlock:
 rt5665->calibration_done = 1;
 mutex_unlock(&rt5665->calibrate_mutex);
}
