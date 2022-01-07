
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cs42l56_private {int iface_inv; int iface_fmt; int iface; } ;


 int CS42L56_CLKCTL_1 ;
 int CS42L56_DIG_FMT_I2S ;
 int CS42L56_DIG_FMT_LEFT_J ;
 int CS42L56_DIG_FMT_MASK ;
 int CS42L56_MASTER_MODE ;
 int CS42L56_MS_MODE_MASK ;
 int CS42L56_SCLK_INV ;
 int CS42L56_SCLK_INV_MASK ;
 int CS42L56_SERIAL_FMT ;
 int CS42L56_SLAVE_MODE ;
 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 struct cs42l56_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int cs42l56_set_dai_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 struct cs42l56_private *cs42l56 = snd_soc_component_get_drvdata(component);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133:
  cs42l56->iface = CS42L56_MASTER_MODE;
  break;
 case 132:
  cs42l56->iface = CS42L56_SLAVE_MODE;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 131:
  cs42l56->iface_fmt = CS42L56_DIG_FMT_I2S;
  break;
 case 129:
  cs42l56->iface_fmt = CS42L56_DIG_FMT_LEFT_J;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  cs42l56->iface_inv = 0;
  break;
 case 130:
  cs42l56->iface_inv = CS42L56_SCLK_INV;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, CS42L56_CLKCTL_1,
       CS42L56_MS_MODE_MASK, cs42l56->iface);
 snd_soc_component_update_bits(component, CS42L56_SERIAL_FMT,
       CS42L56_DIG_FMT_MASK, cs42l56->iface_fmt);
 snd_soc_component_update_bits(component, CS42L56_CLKCTL_1,
       CS42L56_SCLK_INV_MASK, cs42l56->iface_inv);
 return 0;
}
