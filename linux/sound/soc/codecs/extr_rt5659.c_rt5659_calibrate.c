
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt5659_priv {int regmap; TYPE_1__* component; } ;
struct TYPE_2__ {int dev; } ;


 int RT5659_A_DAC_MUX ;
 int RT5659_BIAS_CUR_CTRL_8 ;
 int RT5659_CALIB_ADC_CTRL ;
 int RT5659_CAL_REC ;
 int RT5659_CHOP_DAC ;
 int RT5659_CLASSD_0 ;
 int RT5659_CLASSD_1 ;
 int RT5659_CLASSD_2 ;
 int RT5659_CLASSD_CTRL_1 ;
 int RT5659_DEPOP_1 ;
 int RT5659_DIG_MISC ;
 int RT5659_GLB_CLK ;
 int RT5659_HP_CALIB_CTRL_1 ;
 int RT5659_HP_CALIB_CTRL_2 ;
 int RT5659_HP_CALIB_CTRL_7 ;
 int RT5659_HP_CHARGE_PUMP_1 ;
 int RT5659_HP_VOL ;
 int RT5659_MICBIAS_2 ;
 int RT5659_MONOMIX_IN_GAIN ;
 int RT5659_MONO_AMP_CALIB_CTRL_1 ;
 int RT5659_MONO_GAIN ;
 int RT5659_MONO_NG2_CTRL_5 ;
 int RT5659_MONO_OUT ;
 int RT5659_PRE_DIV_1 ;
 int RT5659_PRE_DIV_2 ;
 int RT5659_PWR_ANLG_1 ;
 int RT5659_PWR_ANLG_3 ;
 int RT5659_PWR_DIG_1 ;
 int RT5659_PWR_DIG_2 ;
 int RT5659_PWR_MIXER ;
 int RT5659_PWR_VOL ;
 int RT5659_SPK_DC_CAILB_CTRL_1 ;
 int RT5659_SPK_DC_CAILB_CTRL_3 ;
 int RT5659_SPK_L_MIXER ;
 int RT5659_SPK_R_MIXER ;
 int RT5659_SPO_AMP_GAIN ;
 int RT5659_SPO_VOL ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rt5659_calibrate(struct rt5659_priv *rt5659)
{
 int value, count;



 regmap_write(rt5659->regmap, RT5659_BIAS_CUR_CTRL_8, 0xa502);
 regmap_write(rt5659->regmap, RT5659_CHOP_DAC, 0x3030);

 regmap_write(rt5659->regmap, RT5659_PRE_DIV_1, 0xef00);
 regmap_write(rt5659->regmap, RT5659_PRE_DIV_2, 0xeffc);
 regmap_write(rt5659->regmap, RT5659_MICBIAS_2, 0x0280);
 regmap_write(rt5659->regmap, RT5659_DIG_MISC, 0x0001);
 regmap_write(rt5659->regmap, RT5659_GLB_CLK, 0x8000);

 regmap_write(rt5659->regmap, RT5659_PWR_ANLG_1, 0xaa7e);
 msleep(60);
 regmap_write(rt5659->regmap, RT5659_PWR_ANLG_1, 0xfe7e);
 msleep(50);
 regmap_write(rt5659->regmap, RT5659_PWR_ANLG_3, 0x0004);
 regmap_write(rt5659->regmap, RT5659_PWR_DIG_2, 0x0400);
 msleep(50);
 regmap_write(rt5659->regmap, RT5659_PWR_DIG_1, 0x0080);
 usleep_range(10000, 10005);
 regmap_write(rt5659->regmap, RT5659_DEPOP_1, 0x0009);
 msleep(50);
 regmap_write(rt5659->regmap, RT5659_PWR_DIG_1, 0x0f80);
 msleep(50);
 regmap_write(rt5659->regmap, RT5659_HP_CHARGE_PUMP_1, 0x0e16);
 msleep(50);


 regmap_write(rt5659->regmap, RT5659_CAL_REC, 0x0505);
 msleep(50);
 regmap_write(rt5659->regmap, RT5659_PWR_ANLG_3, 0x0184);
 regmap_write(rt5659->regmap, RT5659_CALIB_ADC_CTRL, 0x3c05);
 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x20c1);


 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x2cc1);
 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, 0x5100);
 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_7, 0x0014);
 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, 0xd100);
 msleep(60);


 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x2cc1);
 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, 0x4900);
 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_7, 0x0016);
 regmap_update_bits(rt5659->regmap, RT5659_HP_CALIB_CTRL_1,
  0x8000, 0x8000);

 count = 0;
 while (1) {
  regmap_read(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, &value);
  if (value & 0x8000)
   usleep_range(10000, 10005);
  else
   break;

  if (count > 30) {
   dev_err(rt5659->component->dev,
    "HP Calibration 1 Failure\n");
   return;
  }

  count++;
 }


 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x2cc1);
 regmap_write(rt5659->regmap, RT5659_HP_VOL, 0x0000);
 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, 0x4500);
 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_7, 0x001f);
 regmap_update_bits(rt5659->regmap, RT5659_HP_CALIB_CTRL_1,
  0x8000, 0x8000);

 count = 0;
 while (1) {
  regmap_read(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, &value);
  if (value & 0x8000)
   usleep_range(10000, 10005);
  else
   break;

  if (count > 85) {
   dev_err(rt5659->component->dev,
    "HP Calibration 2 Failure\n");
   return;
  }

  count++;
 }

 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_7, 0x0000);
 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x20c0);



 regmap_write(rt5659->regmap, RT5659_CLASSD_0, 0x2021);
 regmap_write(rt5659->regmap, RT5659_CLASSD_CTRL_1, 0x0260);
 regmap_write(rt5659->regmap, RT5659_PWR_MIXER, 0x3000);
 regmap_write(rt5659->regmap, RT5659_PWR_VOL, 0xc000);
 regmap_write(rt5659->regmap, RT5659_A_DAC_MUX, 0x000c);
 regmap_write(rt5659->regmap, RT5659_DIG_MISC, 0x8000);
 regmap_write(rt5659->regmap, RT5659_SPO_VOL, 0x0808);
 regmap_write(rt5659->regmap, RT5659_SPK_L_MIXER, 0x001e);
 regmap_write(rt5659->regmap, RT5659_SPK_R_MIXER, 0x001e);
 regmap_write(rt5659->regmap, RT5659_CLASSD_1, 0x0803);
 regmap_write(rt5659->regmap, RT5659_CLASSD_2, 0x0554);
 regmap_write(rt5659->regmap, RT5659_SPO_AMP_GAIN, 0x1103);


 regmap_write(rt5659->regmap, RT5659_CAL_REC, 0x0909);
 regmap_update_bits(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x0001,
  0x0001);


 regmap_write(rt5659->regmap, RT5659_SPK_DC_CAILB_CTRL_3, 0x0000);
 regmap_write(rt5659->regmap, RT5659_CLASSD_0, 0x0021);
 regmap_write(rt5659->regmap, RT5659_SPK_DC_CAILB_CTRL_1, 0x3e80);
 regmap_update_bits(rt5659->regmap, RT5659_SPK_DC_CAILB_CTRL_1,
  0x8000, 0x8000);

 count = 0;
 while (1) {
  regmap_read(rt5659->regmap,
    RT5659_SPK_DC_CAILB_CTRL_1, &value);
  if (value & 0x8000)
   usleep_range(10000, 10005);
  else
   break;

  if (count > 10) {
   dev_err(rt5659->component->dev,
    "SPK Calibration Failure\n");
   return;
  }

  count++;
 }



 regmap_write(rt5659->regmap, RT5659_DIG_MISC, 0x0000);
 regmap_write(rt5659->regmap, RT5659_MONOMIX_IN_GAIN, 0x021f);
 regmap_write(rt5659->regmap, RT5659_MONO_OUT, 0x480a);

 regmap_write(rt5659->regmap, RT5659_MONO_GAIN, 0x0003);
 regmap_write(rt5659->regmap, RT5659_MONO_NG2_CTRL_5, 0x0009);


 regmap_write(rt5659->regmap, RT5659_SPK_DC_CAILB_CTRL_3, 0x000f);
 regmap_write(rt5659->regmap, RT5659_MONO_AMP_CALIB_CTRL_1, 0x1e00);
 regmap_update_bits(rt5659->regmap, RT5659_MONO_AMP_CALIB_CTRL_1,
  0x8000, 0x8000);

 count = 0;
 while (1) {
  regmap_read(rt5659->regmap, RT5659_MONO_AMP_CALIB_CTRL_1,
   &value);
  if (value & 0x8000)
   usleep_range(10000, 10005);
  else
   break;

  if (count > 35) {
   dev_err(rt5659->component->dev,
    "Mono Calibration Failure\n");
   return;
  }

  count++;
 }

 regmap_write(rt5659->regmap, RT5659_SPK_DC_CAILB_CTRL_3, 0x0003);



 regmap_write(rt5659->regmap, RT5659_CAL_REC, 0x0808);
 regmap_write(rt5659->regmap, RT5659_PWR_ANLG_3, 0x0000);
 regmap_write(rt5659->regmap, RT5659_CALIB_ADC_CTRL, 0x2005);
 regmap_write(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x20c0);
 regmap_write(rt5659->regmap, RT5659_DEPOP_1, 0x0000);
 regmap_write(rt5659->regmap, RT5659_CLASSD_1, 0x0011);
 regmap_write(rt5659->regmap, RT5659_CLASSD_2, 0x0150);
 regmap_write(rt5659->regmap, RT5659_PWR_ANLG_1, 0xfe3e);
 regmap_write(rt5659->regmap, RT5659_MONO_OUT, 0xc80a);
 regmap_write(rt5659->regmap, RT5659_MONO_AMP_CALIB_CTRL_1, 0x1e04);
 regmap_write(rt5659->regmap, RT5659_PWR_MIXER, 0x0000);
 regmap_write(rt5659->regmap, RT5659_PWR_VOL, 0x0000);
 regmap_write(rt5659->regmap, RT5659_PWR_DIG_1, 0x0000);
 regmap_write(rt5659->regmap, RT5659_PWR_DIG_2, 0x0000);
 regmap_write(rt5659->regmap, RT5659_PWR_ANLG_1, 0x003e);
 regmap_write(rt5659->regmap, RT5659_CLASSD_CTRL_1, 0x0060);
 regmap_write(rt5659->regmap, RT5659_CLASSD_0, 0x2021);
 regmap_write(rt5659->regmap, RT5659_GLB_CLK, 0x0000);
 regmap_write(rt5659->regmap, RT5659_MICBIAS_2, 0x0080);
 regmap_write(rt5659->regmap, RT5659_HP_VOL, 0x8080);
 regmap_write(rt5659->regmap, RT5659_HP_CHARGE_PUMP_1, 0x0c16);
}
