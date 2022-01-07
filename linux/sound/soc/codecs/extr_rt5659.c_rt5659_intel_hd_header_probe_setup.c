
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5659_priv {int hda_hp_plugged; int hda_mic_plugged; int regmap; } ;


 int RT5659_4BTN_IL_CMD_1 ;
 int RT5659_4BTN_IL_CMD_2 ;
 int RT5659_4BTN_IL_EN ;
 int RT5659_4BTN_IL_MASK ;
 int RT5659_GPIO_STA ;
 int RT5659_IL_IRQ_EN ;
 int RT5659_IL_IRQ_MASK ;
 int RT5659_IRQ_CTRL_1 ;
 int RT5659_IRQ_CTRL_2 ;
 int RT5659_PWR_ANLG_1 ;
 int RT5659_PWR_ANLG_2 ;
 int RT5659_PWR_ANLG_3 ;
 int RT5659_PWR_FV2 ;
 int RT5659_PWR_LDO2 ;
 int RT5659_PWR_MB ;
 int RT5659_PWR_MB1 ;
 int RT5659_PWR_MIC_DET ;
 int RT5659_PWR_VOL ;
 int RT5659_PWR_VREF2 ;
 int msleep (int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void rt5659_intel_hd_header_probe_setup(struct rt5659_priv *rt5659)
{
 int value;

 regmap_read(rt5659->regmap, RT5659_GPIO_STA, &value);
 if (!(value & 0x8)) {
  rt5659->hda_hp_plugged = 1;
  regmap_update_bits(rt5659->regmap, RT5659_IRQ_CTRL_1,
   0x10, 0x0);
 } else {
  regmap_update_bits(rt5659->regmap, RT5659_IRQ_CTRL_1,
   0x10, 0x10);
 }

 regmap_update_bits(rt5659->regmap, RT5659_PWR_ANLG_1,
  RT5659_PWR_VREF2 | RT5659_PWR_MB,
  RT5659_PWR_VREF2 | RT5659_PWR_MB);
 msleep(20);
 regmap_update_bits(rt5659->regmap, RT5659_PWR_ANLG_1,
  RT5659_PWR_FV2, RT5659_PWR_FV2);

 regmap_update_bits(rt5659->regmap, RT5659_PWR_ANLG_3, RT5659_PWR_LDO2,
  RT5659_PWR_LDO2);
 regmap_update_bits(rt5659->regmap, RT5659_PWR_ANLG_2, RT5659_PWR_MB1,
  RT5659_PWR_MB1);
 regmap_update_bits(rt5659->regmap, RT5659_PWR_VOL, RT5659_PWR_MIC_DET,
  RT5659_PWR_MIC_DET);
 msleep(20);

 regmap_update_bits(rt5659->regmap, RT5659_4BTN_IL_CMD_2,
  RT5659_4BTN_IL_MASK, RT5659_4BTN_IL_EN);
 regmap_read(rt5659->regmap, RT5659_4BTN_IL_CMD_1, &value);
 regmap_write(rt5659->regmap, RT5659_4BTN_IL_CMD_1, value);
 regmap_read(rt5659->regmap, RT5659_4BTN_IL_CMD_1, &value);

 if (value & 0x2000) {
  rt5659->hda_mic_plugged = 1;
  regmap_update_bits(rt5659->regmap, RT5659_IRQ_CTRL_2,
   0x2, 0x2);
 } else {
  regmap_update_bits(rt5659->regmap, RT5659_IRQ_CTRL_2,
   0x2, 0x0);
 }

 regmap_update_bits(rt5659->regmap, RT5659_IRQ_CTRL_2,
  RT5659_IL_IRQ_MASK, RT5659_IL_IRQ_EN);
}
