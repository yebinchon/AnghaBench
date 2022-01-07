
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs42l51_ratios {unsigned int ratio; int speed_mode; scalar_t__ mclk; } ;
struct cs42l51_private {int func; unsigned int mclk; int audio_mode; } ;


 int ARRAY_SIZE (struct cs42l51_ratios*) ;
 int CS42L51_DAC_DIF_I2S ;
 int CS42L51_DAC_DIF_LJ24 ;
 int CS42L51_DAC_DIF_RJ16 ;
 int CS42L51_DAC_DIF_RJ18 ;
 int CS42L51_DAC_DIF_RJ20 ;
 int CS42L51_DAC_DIF_RJ24 ;
 int CS42L51_DSM_MODE ;
 int CS42L51_INTF_CTL ;
 int CS42L51_INTF_CTL_ADC_I2S ;
 int CS42L51_INTF_CTL_DAC_FORMAT (int) ;
 int CS42L51_INTF_CTL_MASTER ;
 int CS42L51_MIC_POWER_CTL ;
 int CS42L51_MIC_POWER_CTL_AUTO ;
 int CS42L51_MIC_POWER_CTL_MCLK_DIV2 ;
 int CS42L51_MIC_POWER_CTL_SPEED (int) ;
 int EINVAL ;






 int dev_err (int ,char*) ;
 struct cs42l51_ratios* master_ratios ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct cs42l51_ratios* slave_auto_ratios ;
 struct cs42l51_ratios* slave_ratios ;
 struct cs42l51_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int cs42l51_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *params,
  struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs42l51_private *cs42l51 = snd_soc_component_get_drvdata(component);
 int ret;
 unsigned int i;
 unsigned int rate;
 unsigned int ratio;
 struct cs42l51_ratios *ratios = ((void*)0);
 int nr_ratios = 0;
 int intf_ctl, power_ctl, fmt, mode;

 switch (cs42l51->func) {
 case 133:
  ratios = master_ratios;
  nr_ratios = ARRAY_SIZE(master_ratios);
  break;
 case 132:
  ratios = slave_ratios;
  nr_ratios = ARRAY_SIZE(slave_ratios);
  break;
 case 131:
  ratios = slave_auto_ratios;
  nr_ratios = ARRAY_SIZE(slave_auto_ratios);
  break;
 }


 rate = params_rate(params);
 ratio = cs42l51->mclk / rate;
 for (i = 0; i < nr_ratios; i++) {
  if (ratios[i].ratio == ratio)
   break;
 }

 if (i == nr_ratios) {

  dev_err(component->dev, "could not find matching ratio\n");
  return -EINVAL;
 }

 intf_ctl = snd_soc_component_read32(component, CS42L51_INTF_CTL);
 power_ctl = snd_soc_component_read32(component, CS42L51_MIC_POWER_CTL);

 intf_ctl &= ~(CS42L51_INTF_CTL_MASTER | CS42L51_INTF_CTL_ADC_I2S
   | CS42L51_INTF_CTL_DAC_FORMAT(7));
 power_ctl &= ~(CS42L51_MIC_POWER_CTL_SPEED(3)
   | CS42L51_MIC_POWER_CTL_MCLK_DIV2);

 switch (cs42l51->func) {
 case 133:
  intf_ctl |= CS42L51_INTF_CTL_MASTER;
  mode = ratios[i].speed_mode;

  if (rate > 50000)
   mode = CS42L51_DSM_MODE;
  power_ctl |= CS42L51_MIC_POWER_CTL_SPEED(mode);




  power_ctl &= ~CS42L51_MIC_POWER_CTL_AUTO;
  break;
 case 132:
  power_ctl |= CS42L51_MIC_POWER_CTL_SPEED(ratios[i].speed_mode);
  break;
 case 131:
  power_ctl |= CS42L51_MIC_POWER_CTL_AUTO;
  break;
 }

 switch (cs42l51->audio_mode) {
 case 130:
  intf_ctl |= CS42L51_INTF_CTL_ADC_I2S;
  intf_ctl |= CS42L51_INTF_CTL_DAC_FORMAT(CS42L51_DAC_DIF_I2S);
  break;
 case 129:
  intf_ctl |= CS42L51_INTF_CTL_DAC_FORMAT(CS42L51_DAC_DIF_LJ24);
  break;
 case 128:
  switch (params_width(params)) {
  case 16:
   fmt = CS42L51_DAC_DIF_RJ16;
   break;
  case 18:
   fmt = CS42L51_DAC_DIF_RJ18;
   break;
  case 20:
   fmt = CS42L51_DAC_DIF_RJ20;
   break;
  case 24:
   fmt = CS42L51_DAC_DIF_RJ24;
   break;
  default:
   dev_err(component->dev, "unknown format\n");
   return -EINVAL;
  }
  intf_ctl |= CS42L51_INTF_CTL_DAC_FORMAT(fmt);
  break;
 default:
  dev_err(component->dev, "unknown format\n");
  return -EINVAL;
 }

 if (ratios[i].mclk)
  power_ctl |= CS42L51_MIC_POWER_CTL_MCLK_DIV2;

 ret = snd_soc_component_write(component, CS42L51_INTF_CTL, intf_ctl);
 if (ret < 0)
  return ret;

 ret = snd_soc_component_write(component, CS42L51_MIC_POWER_CTL, power_ctl);
 if (ret < 0)
  return ret;

 return 0;
}
