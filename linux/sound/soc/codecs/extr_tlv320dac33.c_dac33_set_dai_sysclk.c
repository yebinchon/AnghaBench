
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlv320dac33_priv {unsigned int refclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int DAC33_ASRC_CTRL_B ;
 int DAC33_INT_OSC_CTRL ;
 int DAC33_REFSEL ;
 int DAC33_SRCREFSEL ;


 int dac33_read_reg_cache (struct snd_soc_component*,int ) ;
 int dac33_write_reg_cache (struct snd_soc_component*,int ,int ) ;
 int dev_err (int ,char*,int) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int dac33_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);
 u8 ioc_reg, asrcb_reg;

 ioc_reg = dac33_read_reg_cache(component, DAC33_INT_OSC_CTRL);
 asrcb_reg = dac33_read_reg_cache(component, DAC33_ASRC_CTRL_B);
 switch (clk_id) {
 case 129:
  ioc_reg |= DAC33_REFSEL;
  asrcb_reg |= DAC33_SRCREFSEL;
  break;
 case 128:
  ioc_reg &= ~DAC33_REFSEL;
  asrcb_reg &= ~DAC33_SRCREFSEL;
  break;
 default:
  dev_err(component->dev, "Invalid clock ID (%d)\n", clk_id);
  break;
 }
 dac33->refclk = freq;

 dac33_write_reg_cache(component, DAC33_INT_OSC_CTRL, ioc_reg);
 dac33_write_reg_cache(component, DAC33_ASRC_CTRL_B, asrcb_reg);

 return 0;
}
