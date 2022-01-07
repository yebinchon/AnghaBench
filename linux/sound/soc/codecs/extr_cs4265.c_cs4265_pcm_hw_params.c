
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs4265_private {int format; int sysclk; } ;
struct TYPE_2__ {int fm_mode; int mclkdiv; } ;


 int CS4265_ADC_CTL ;
 int CS4265_ADC_DIF ;
 int CS4265_ADC_FM ;
 int CS4265_DAC_CTL ;
 int CS4265_DAC_CTL_DIF ;
 int CS4265_MCLK_FREQ ;
 int CS4265_MCLK_FREQ_MASK ;
 int CS4265_SPDIF_CTL2 ;
 int CS4265_SPDIF_CTL2_DIF ;
 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;



 TYPE_1__* clk_map_table ;
 int cs4265_get_clk_index (int ,int ) ;
 int dev_err (int ,char*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct cs4265_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int cs4265_pcm_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params,
         struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs4265_private *cs4265 = snd_soc_component_get_drvdata(component);
 int index;

 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE &&
  ((cs4265->format & SND_SOC_DAIFMT_FORMAT_MASK)
  == 128))
  return -EINVAL;

 index = cs4265_get_clk_index(cs4265->sysclk, params_rate(params));
 if (index >= 0) {
  snd_soc_component_update_bits(component, CS4265_ADC_CTL,
   CS4265_ADC_FM, clk_map_table[index].fm_mode << 6);
  snd_soc_component_update_bits(component, CS4265_MCLK_FREQ,
   CS4265_MCLK_FREQ_MASK,
   clk_map_table[index].mclkdiv << 4);

 } else {
  dev_err(component->dev, "can't get correct mclk\n");
  return -EINVAL;
 }

 switch (cs4265->format & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  snd_soc_component_update_bits(component, CS4265_DAC_CTL,
   CS4265_DAC_CTL_DIF, (1 << 4));
  snd_soc_component_update_bits(component, CS4265_ADC_CTL,
   CS4265_ADC_DIF, (1 << 4));
  snd_soc_component_update_bits(component, CS4265_SPDIF_CTL2,
   CS4265_SPDIF_CTL2_DIF, (1 << 6));
  break;
 case 128:
  if (params_width(params) == 16) {
   snd_soc_component_update_bits(component, CS4265_DAC_CTL,
    CS4265_DAC_CTL_DIF, (2 << 4));
   snd_soc_component_update_bits(component, CS4265_SPDIF_CTL2,
    CS4265_SPDIF_CTL2_DIF, (2 << 6));
  } else {
   snd_soc_component_update_bits(component, CS4265_DAC_CTL,
    CS4265_DAC_CTL_DIF, (3 << 4));
   snd_soc_component_update_bits(component, CS4265_SPDIF_CTL2,
    CS4265_SPDIF_CTL2_DIF, (3 << 6));
  }
  break;
 case 129:
  snd_soc_component_update_bits(component, CS4265_DAC_CTL,
   CS4265_DAC_CTL_DIF, 0);
  snd_soc_component_update_bits(component, CS4265_ADC_CTL,
   CS4265_ADC_DIF, 0);
  snd_soc_component_update_bits(component, CS4265_SPDIF_CTL2,
   CS4265_SPDIF_CTL2_DIF, 0);

  break;
 default:
  return -EINVAL;
 }
 return 0;
}
