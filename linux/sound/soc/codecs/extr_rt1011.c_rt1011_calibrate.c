
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct rt1011_priv {unsigned int r0_reg; int cali_done; int regmap; int component; } ;
struct device {int dummy; } ;


 int EAGAIN ;
 int RT1011_ADC_SET_1 ;
 int RT1011_ADC_SET_4 ;
 int RT1011_ADC_SET_5 ;
 int RT1011_A_TEMP_SEN ;
 int RT1011_A_TIMING_1 ;
 int RT1011_BAT_GAIN_1 ;
 int RT1011_BOOST_CON_1 ;
 int RT1011_CLASSD_INTERNAL_SET_1 ;
 int RT1011_CLASS_D_POS ;
 int RT1011_CLK_2 ;
 int RT1011_CLK_DET ;
 int RT1011_DAC_SET_2 ;
 int RT1011_DAC_SET_3 ;
 int RT1011_DC_CALIB_CLASSD_3 ;
 int RT1011_EFUSE_ADC_OFFSET_15_0 ;
 int RT1011_EFUSE_ADC_OFFSET_18_16 ;
 int RT1011_EFUSE_CONTROL_1 ;
 int RT1011_EFUSE_DAC_OFFSET_G0_15_0 ;
 int RT1011_EFUSE_DAC_OFFSET_G0_20_16 ;
 int RT1011_EFUSE_DAC_OFFSET_G1_15_0 ;
 int RT1011_EFUSE_DAC_OFFSET_G1_20_16 ;
 int RT1011_INIT_RECIPROCAL_REG_15_0 ;
 int RT1011_INIT_RECIPROCAL_REG_24_16 ;
 int RT1011_INIT_RECIPROCAL_SYN_15_0 ;
 int RT1011_INIT_RECIPROCAL_SYN_24_16 ;
 int RT1011_MIXER_1 ;
 int RT1011_PLL_1 ;
 int RT1011_PLL_2 ;
 int RT1011_POWER_1 ;
 int RT1011_POWER_2 ;
 int RT1011_POWER_3 ;
 int RT1011_POWER_4 ;
 int RT1011_POWER_6 ;
 int RT1011_POWER_9 ;
 int RT1011_RESET ;
 int RT1011_SPK_PRO_DC_DET_1 ;
 int RT1011_SPK_PRO_DC_DET_2 ;
 int RT1011_SPK_TEMP_PROTECT_0 ;
 int RT1011_SPK_TEMP_PROTECT_4 ;
 int RT1011_SPK_TEMP_PROTECT_6 ;
 int RT1011_SPK_TEMP_PROTECT_7 ;
 int RT1011_SYSTEM_RESET_3 ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,unsigned int,...) ;
 int msleep (int) ;
 int regcache_cache_bypass (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 struct device* regmap_get_device (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (int ) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int rt1011_calibrate(struct rt1011_priv *rt1011, unsigned char cali_flag)
{
 unsigned int value, count = 0, r0[3];
 unsigned int chk_cnt = 50;
 unsigned int dc_offset;
 unsigned int r0_integer, r0_factor, format;
 struct device *dev = regmap_get_device(rt1011->regmap);
 struct snd_soc_dapm_context *dapm =
  snd_soc_component_get_dapm(rt1011->component);
 int ret = 0;

 snd_soc_dapm_mutex_lock(dapm);
 regcache_cache_bypass(rt1011->regmap, 1);

 regmap_write(rt1011->regmap, RT1011_RESET, 0x0000);
 regmap_write(rt1011->regmap, RT1011_SYSTEM_RESET_3, 0x740f);
 regmap_write(rt1011->regmap, RT1011_SYSTEM_RESET_3, 0x770f);


 regmap_write(rt1011->regmap, RT1011_CLK_2, 0x9400);
 regmap_write(rt1011->regmap, RT1011_PLL_1, 0x0800);
 regmap_write(rt1011->regmap, RT1011_PLL_2, 0x0020);
 regmap_write(rt1011->regmap, RT1011_CLK_DET, 0x0800);


 regmap_write(rt1011->regmap, RT1011_ADC_SET_5, 0x0a20);
 regmap_write(rt1011->regmap, RT1011_DAC_SET_2, 0xe232);
 regmap_write(rt1011->regmap, RT1011_ADC_SET_1, 0x2925);
 regmap_write(rt1011->regmap, RT1011_ADC_SET_4, 0xc000);


 regmap_write(rt1011->regmap, RT1011_SPK_PRO_DC_DET_1, 0xb00c);
 regmap_write(rt1011->regmap, RT1011_SPK_PRO_DC_DET_2, 0xcccc);


 regmap_write(rt1011->regmap, RT1011_POWER_1, 0xe0e0);
 regmap_write(rt1011->regmap, RT1011_POWER_3, 0x5003);
 regmap_write(rt1011->regmap, RT1011_POWER_9, 0xa860);
 regmap_write(rt1011->regmap, RT1011_DAC_SET_2, 0xa032);


 regmap_write(rt1011->regmap, RT1011_POWER_2, 0x0007);
 regmap_write(rt1011->regmap, RT1011_POWER_3, 0x5ff7);
 regmap_write(rt1011->regmap, RT1011_A_TEMP_SEN, 0x7f44);
 regmap_write(rt1011->regmap, RT1011_A_TIMING_1, 0x4054);
 regmap_write(rt1011->regmap, RT1011_BAT_GAIN_1, 0x309c);


 regmap_write(rt1011->regmap, RT1011_DC_CALIB_CLASSD_3, 0xcb00);
 regmap_write(rt1011->regmap, RT1011_BOOST_CON_1, 0xe080);
 regmap_write(rt1011->regmap, RT1011_POWER_4, 0x16f2);
 regmap_write(rt1011->regmap, RT1011_POWER_6, 0x36ad);


 regmap_write(rt1011->regmap, RT1011_MIXER_1, 0x3f1d);


 regmap_write(rt1011->regmap, RT1011_EFUSE_CONTROL_1, 0x0d0a);
 msleep(30);

 regmap_read(rt1011->regmap, RT1011_EFUSE_ADC_OFFSET_18_16, &value);
 dc_offset = value << 16;
 regmap_read(rt1011->regmap, RT1011_EFUSE_ADC_OFFSET_15_0, &value);
 dc_offset |= (value & 0xffff);
 dev_info(dev, "ADC offset=0x%x\n", dc_offset);
 regmap_read(rt1011->regmap, RT1011_EFUSE_DAC_OFFSET_G0_20_16, &value);
 dc_offset = value << 16;
 regmap_read(rt1011->regmap, RT1011_EFUSE_DAC_OFFSET_G0_15_0, &value);
 dc_offset |= (value & 0xffff);
 dev_info(dev, "Gain0 offset=0x%x\n", dc_offset);
 regmap_read(rt1011->regmap, RT1011_EFUSE_DAC_OFFSET_G1_20_16, &value);
 dc_offset = value << 16;
 regmap_read(rt1011->regmap, RT1011_EFUSE_DAC_OFFSET_G1_15_0, &value);
 dc_offset |= (value & 0xffff);
 dev_info(dev, "Gain1 offset=0x%x\n", dc_offset);


 if (cali_flag) {

  regmap_write(rt1011->regmap, RT1011_CLASS_D_POS, 0x010e);
  regmap_write(rt1011->regmap,
   RT1011_CLASSD_INTERNAL_SET_1, 0x1701);


  regmap_write(rt1011->regmap, RT1011_SPK_TEMP_PROTECT_0, 0x8000);
  regmap_write(rt1011->regmap, RT1011_SPK_TEMP_PROTECT_7, 0xf000);
  regmap_write(rt1011->regmap, RT1011_SPK_TEMP_PROTECT_4, 0x4040);
  regmap_write(rt1011->regmap, RT1011_SPK_TEMP_PROTECT_0, 0xc000);
  regmap_write(rt1011->regmap, RT1011_SPK_TEMP_PROTECT_6, 0x07c2);

  r0[0] = r0[1] = r0[2] = count = 0;
  while (count < chk_cnt) {
   msleep(100);
   regmap_read(rt1011->regmap,
    RT1011_INIT_RECIPROCAL_SYN_24_16, &value);
   r0[count%3] = value << 16;
   regmap_read(rt1011->regmap,
    RT1011_INIT_RECIPROCAL_SYN_15_0, &value);
   r0[count%3] |= value;

   if (r0[count%3] == 0)
    continue;

   count++;

   if (r0[0] == r0[1] && r0[1] == r0[2])
    break;
  }
  if (count > chk_cnt) {
   dev_err(dev, "Calibrate R0 Failure\n");
   ret = -EAGAIN;
  } else {
   format = 2147483648U;
   r0_integer = format / r0[0] / 128;
   r0_factor = ((format / r0[0] * 100) / 128)
       - (r0_integer * 100);
   rt1011->r0_reg = r0[0];
   rt1011->cali_done = 1;
   dev_info(dev, "r0 resistance about %d.%02d ohm, reg=0x%X\n",
    r0_integer, r0_factor, r0[0]);
  }
 }


 regmap_write(rt1011->regmap, RT1011_SPK_TEMP_PROTECT_0, 0x0000);
 msleep(400);
 regmap_write(rt1011->regmap, RT1011_POWER_9, 0xa840);
 regmap_write(rt1011->regmap, RT1011_SPK_TEMP_PROTECT_6, 0x0702);
 regmap_write(rt1011->regmap, RT1011_MIXER_1, 0xffdd);
 regmap_write(rt1011->regmap, RT1011_CLASSD_INTERNAL_SET_1, 0x0701);
 regmap_write(rt1011->regmap, RT1011_DAC_SET_3, 0xe004);
 regmap_write(rt1011->regmap, RT1011_A_TEMP_SEN, 0x7f40);
 regmap_write(rt1011->regmap, RT1011_POWER_1, 0x0000);
 regmap_write(rt1011->regmap, RT1011_POWER_2, 0x0000);
 regmap_write(rt1011->regmap, RT1011_POWER_3, 0x0002);
 regmap_write(rt1011->regmap, RT1011_POWER_4, 0x00f2);

 regmap_write(rt1011->regmap, RT1011_RESET, 0x0000);

 if (cali_flag) {
  if (count <= chk_cnt) {
   regmap_write(rt1011->regmap,
    RT1011_INIT_RECIPROCAL_REG_24_16,
    ((r0[0]>>16) & 0x1ff));
   regmap_write(rt1011->regmap,
    RT1011_INIT_RECIPROCAL_REG_15_0,
    (r0[0] & 0xffff));
   regmap_write(rt1011->regmap,
    RT1011_SPK_TEMP_PROTECT_4, 0x4080);
  }
 }

 regcache_cache_bypass(rt1011->regmap, 0);
 regcache_mark_dirty(rt1011->regmap);
 regcache_sync(rt1011->regmap);
 snd_soc_dapm_mutex_unlock(dapm);

 return ret;
}
