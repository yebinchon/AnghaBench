
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs4270_private {unsigned int mclk; int mode; scalar_t__ slave_mode; } ;
struct TYPE_2__ {unsigned int ratio; int mclk; int speed_mode; } ;


 int CS4270_FORMAT ;
 int CS4270_FORMAT_ADC_I2S ;
 int CS4270_FORMAT_ADC_LJ ;
 int CS4270_FORMAT_ADC_MASK ;
 int CS4270_FORMAT_DAC_I2S ;
 int CS4270_FORMAT_DAC_LJ ;
 int CS4270_FORMAT_DAC_MASK ;
 int CS4270_MODE ;
 int CS4270_MODE_DIV_MASK ;
 int CS4270_MODE_SLAVE ;
 int CS4270_MODE_SPEED_MASK ;
 int EINVAL ;
 unsigned int NUM_MCLK_RATIOS ;


 TYPE_1__* cs4270_mode_ratios ;
 int dev_err (int ,char*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 struct cs4270_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int cs4270_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs4270_private *cs4270 = snd_soc_component_get_drvdata(component);
 int ret;
 unsigned int i;
 unsigned int rate;
 unsigned int ratio;
 int reg;



 rate = params_rate(params);
 ratio = cs4270->mclk / rate;

 for (i = 0; i < NUM_MCLK_RATIOS; i++) {
  if (cs4270_mode_ratios[i].ratio == ratio)
   break;
 }

 if (i == NUM_MCLK_RATIOS) {

  dev_err(component->dev, "could not find matching ratio\n");
  return -EINVAL;
 }



 reg = snd_soc_component_read32(component, CS4270_MODE);
 reg &= ~(CS4270_MODE_SPEED_MASK | CS4270_MODE_DIV_MASK);
 reg |= cs4270_mode_ratios[i].mclk;

 if (cs4270->slave_mode)
  reg |= CS4270_MODE_SLAVE;
 else
  reg |= cs4270_mode_ratios[i].speed_mode;

 ret = snd_soc_component_write(component, CS4270_MODE, reg);
 if (ret < 0) {
  dev_err(component->dev, "i2c write failed\n");
  return ret;
 }



 reg = snd_soc_component_read32(component, CS4270_FORMAT);
 reg &= ~(CS4270_FORMAT_DAC_MASK | CS4270_FORMAT_ADC_MASK);

 switch (cs4270->mode) {
 case 129:
  reg |= CS4270_FORMAT_DAC_I2S | CS4270_FORMAT_ADC_I2S;
  break;
 case 128:
  reg |= CS4270_FORMAT_DAC_LJ | CS4270_FORMAT_ADC_LJ;
  break;
 default:
  dev_err(component->dev, "unknown dai format\n");
  return -EINVAL;
 }

 ret = snd_soc_component_write(component, CS4270_FORMAT, reg);
 if (ret < 0) {
  dev_err(component->dev, "i2c write failed\n");
  return ret;
 }

 return ret;
}
