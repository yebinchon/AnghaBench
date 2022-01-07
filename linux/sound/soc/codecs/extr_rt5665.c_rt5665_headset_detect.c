
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int sar_hs_type; } ;
struct rt5665_priv {int sar_adc_value; scalar_t__ jack_type; int regmap; TYPE_1__ pdata; int component; } ;


 int RT5665_EJD_CTRL_1 ;
 int RT5665_EJD_CTRL_3 ;
 int RT5665_GPIO_STA ;
 int RT5665_IL_CMD_1 ;
 int RT5665_MICBIAS_2 ;
 int RT5665_SAR_IL_CMD_1 ;
 int RT5665_SAR_IL_CMD_4 ;
 scalar_t__ SND_JACK_HEADPHONE ;
 scalar_t__ SND_JACK_HEADSET ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int rt5665_enable_push_button_irq (struct snd_soc_component*,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct rt5665_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (int ,int ) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt5665_headset_detect(struct snd_soc_component *component, int jack_insert)
{
 struct rt5665_priv *rt5665 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 unsigned int sar_hs_type, val;

 if (jack_insert) {
  snd_soc_dapm_force_enable_pin(dapm, "MICBIAS1");
  snd_soc_dapm_sync(dapm);

  regmap_update_bits(rt5665->regmap, RT5665_MICBIAS_2, 0x100,
   0x100);

  regmap_read(rt5665->regmap, RT5665_GPIO_STA, &val);
  if (val & 0x4) {
   regmap_update_bits(rt5665->regmap, RT5665_EJD_CTRL_1,
    0x100, 0);

   regmap_read(rt5665->regmap, RT5665_GPIO_STA, &val);
   while (val & 0x4) {
    usleep_range(10000, 15000);
    regmap_read(rt5665->regmap, RT5665_GPIO_STA,
     &val);
   }
  }

  regmap_update_bits(rt5665->regmap, RT5665_EJD_CTRL_1,
   0x1a0, 0x120);
  regmap_write(rt5665->regmap, RT5665_EJD_CTRL_3, 0x3424);
  regmap_write(rt5665->regmap, RT5665_IL_CMD_1, 0x0048);
  regmap_write(rt5665->regmap, RT5665_SAR_IL_CMD_1, 0xa291);

  usleep_range(10000, 15000);

  rt5665->sar_adc_value = snd_soc_component_read32(rt5665->component,
   RT5665_SAR_IL_CMD_4) & 0x7ff;

  sar_hs_type = rt5665->pdata.sar_hs_type ?
   rt5665->pdata.sar_hs_type : 729;

  if (rt5665->sar_adc_value > sar_hs_type) {
   rt5665->jack_type = SND_JACK_HEADSET;
   rt5665_enable_push_button_irq(component, 1);
   } else {
   rt5665->jack_type = SND_JACK_HEADPHONE;
   regmap_write(rt5665->regmap, RT5665_SAR_IL_CMD_1,
    0x2291);
   regmap_update_bits(rt5665->regmap, RT5665_MICBIAS_2,
    0x100, 0);
   snd_soc_dapm_disable_pin(dapm, "MICBIAS1");
   snd_soc_dapm_sync(dapm);
  }
 } else {
  regmap_write(rt5665->regmap, RT5665_SAR_IL_CMD_1, 0x2291);
  regmap_update_bits(rt5665->regmap, RT5665_MICBIAS_2, 0x100, 0);
  snd_soc_dapm_disable_pin(dapm, "MICBIAS1");
  snd_soc_dapm_sync(dapm);
  if (rt5665->jack_type == SND_JACK_HEADSET)
   rt5665_enable_push_button_irq(component, 0);
  rt5665->jack_type = 0;
 }

 dev_dbg(component->dev, "jack_type = %d\n", rt5665->jack_type);
 return rt5665->jack_type;
}
