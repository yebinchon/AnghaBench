
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct pcm3168a_priv {unsigned int sysclk; int regmap; struct pcm3168a_io_params* io_params; } ;
struct pcm3168a_io_params {int master_mode; unsigned int fmt; int slot_width; int tdm_slots; } ;


 int EINVAL ;
 int PCM3168A_ADC_FMTAD_MASK ;
 int PCM3168A_ADC_FMTAD_SHIFT ;
 int PCM3168A_ADC_MSAD_MASK ;
 int PCM3168A_ADC_MSAD_SHIFT ;
 int PCM3168A_ADC_MST_FMT ;
 int PCM3168A_DAC_FMT_MASK ;
 int PCM3168A_DAC_FMT_SHIFT ;
 int PCM3168A_DAC_MSDA_MASK ;
 int PCM3168A_DAC_MSDA_SHIFT ;
 int PCM3168A_DAC_PWR_MST_FMT ;
 size_t PCM3168A_DAI_DAC ;


 unsigned int PCM3168A_FMT_DSP_MASK ;

 unsigned int PCM3168A_FMT_I2S_TDM ;

 unsigned int PCM3168A_FMT_LEFT_J_TDM ;
 unsigned int PCM3168A_FMT_RIGHT_J ;
 unsigned int PCM3168A_FMT_RIGHT_J_16 ;
 unsigned int PCM3168A_NUM_SCKI_RATIOS_ADC ;
 unsigned int PCM3168A_NUM_SCKI_RATIOS_DAC ;
 int dev_err (int ,char*,...) ;
 unsigned int params_channels (struct snd_pcm_hw_params*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 unsigned int* pcm3168a_scki_ratios ;
 int regmap_update_bits (int ,int,int,unsigned int) ;
 struct pcm3168a_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm3168a_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct pcm3168a_priv *pcm3168a = snd_soc_component_get_drvdata(component);
 struct pcm3168a_io_params *io_params = &pcm3168a->io_params[dai->id];
 bool master_mode;
 u32 val, mask, shift, reg;
 unsigned int rate, fmt, ratio, max_ratio;
 unsigned int tdm_slots;
 int i, slot_width;

 rate = params_rate(params);

 ratio = pcm3168a->sysclk / rate;

 if (dai->id == PCM3168A_DAI_DAC) {
  max_ratio = PCM3168A_NUM_SCKI_RATIOS_DAC;
  reg = PCM3168A_DAC_PWR_MST_FMT;
  mask = PCM3168A_DAC_MSDA_MASK;
  shift = PCM3168A_DAC_MSDA_SHIFT;
 } else {
  max_ratio = PCM3168A_NUM_SCKI_RATIOS_ADC;
  reg = PCM3168A_ADC_MST_FMT;
  mask = PCM3168A_ADC_MSAD_MASK;
  shift = PCM3168A_ADC_MSAD_SHIFT;
 }

 master_mode = io_params->master_mode;
 fmt = io_params->fmt;

 for (i = 0; i < max_ratio; i++) {
  if (pcm3168a_scki_ratios[i] == ratio)
   break;
 }

 if (i == max_ratio) {
  dev_err(component->dev, "unsupported sysclk ratio\n");
  return -EINVAL;
 }

 if (io_params->slot_width)
  slot_width = io_params->slot_width;
 else
  slot_width = params_width(params);

 switch (slot_width) {
 case 16:
  if (master_mode || (fmt != PCM3168A_FMT_RIGHT_J)) {
   dev_err(component->dev, "16-bit slots are supported only for slave mode using right justified\n");
   return -EINVAL;
  }
  fmt = PCM3168A_FMT_RIGHT_J_16;
  break;
 case 24:
  if (master_mode || (fmt & PCM3168A_FMT_DSP_MASK)) {
   dev_err(component->dev, "24-bit slots not supported in master mode, or slave mode using DSP\n");
   return -EINVAL;
  }
  break;
 case 32:
  break;
 default:
  dev_err(component->dev, "unsupported frame size: %d\n", slot_width);
  return -EINVAL;
 }

 if (io_params->tdm_slots)
  tdm_slots = io_params->tdm_slots;
 else
  tdm_slots = params_channels(params);
 if (tdm_slots > 2) {
  switch (fmt) {
  case 129:
  case 131:
   fmt = PCM3168A_FMT_I2S_TDM;
   break;
  case 128:
  case 130:
   fmt = PCM3168A_FMT_LEFT_J_TDM;
   break;
  default:
   dev_err(component->dev,
    "TDM is supported under DSP/I2S/Left_J only\n");
   return -EINVAL;
  }
 }

 if (master_mode)
  val = ((i + 1) << shift);
 else
  val = 0;

 regmap_update_bits(pcm3168a->regmap, reg, mask, val);

 if (dai->id == PCM3168A_DAI_DAC) {
  mask = PCM3168A_DAC_FMT_MASK;
  shift = PCM3168A_DAC_FMT_SHIFT;
 } else {
  mask = PCM3168A_ADC_FMTAD_MASK;
  shift = PCM3168A_ADC_FMTAD_SHIFT;
 }

 regmap_update_bits(pcm3168a->regmap, reg, mask, fmt << shift);

 return 0;
}
