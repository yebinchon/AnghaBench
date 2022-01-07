
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct jz_icdc {int regmap; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 int JZ4725B_CODEC_REG_CCR2 ;
 int JZ4725B_CODEC_REG_CR2 ;
 int REG_CCR2_AFREQ_MASK ;
 unsigned int REG_CCR2_AFREQ_OFFSET ;
 int REG_CCR2_DFREQ_MASK ;
 unsigned int REG_CCR2_DFREQ_OFFSET ;
 int REG_CR2_ADC_ADWL_MASK ;
 unsigned int REG_CR2_ADC_ADWL_OFFSET ;
 int REG_CR2_DAC_ADWL_MASK ;
 unsigned int REG_CR2_DAC_ADWL_OFFSET ;




 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__* jz4725b_codec_sample_rates ;
 int params_format (struct snd_pcm_hw_params*) ;
 scalar_t__ params_rate (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 struct jz_icdc* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int jz4725b_codec_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
 struct jz_icdc *icdc = snd_soc_component_get_drvdata(dai->component);
 unsigned int rate, bit_width;

 switch (params_format(params)) {
 case 131:
  bit_width = 0;
  break;
 case 130:
  bit_width = 1;
  break;
 case 129:
  bit_width = 2;
  break;
 case 128:
  bit_width = 3;
  break;
 default:
  return -EINVAL;
 }

 for (rate = 0; rate < ARRAY_SIZE(jz4725b_codec_sample_rates); rate++) {
  if (jz4725b_codec_sample_rates[rate] == params_rate(params))
   break;
 }

 if (rate == ARRAY_SIZE(jz4725b_codec_sample_rates))
  return -EINVAL;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  regmap_update_bits(icdc->regmap,
       JZ4725B_CODEC_REG_CR2,
       REG_CR2_DAC_ADWL_MASK,
       bit_width << REG_CR2_DAC_ADWL_OFFSET);

  regmap_update_bits(icdc->regmap,
       JZ4725B_CODEC_REG_CCR2,
       REG_CCR2_DFREQ_MASK,
       rate << REG_CCR2_DFREQ_OFFSET);
 } else {
  regmap_update_bits(icdc->regmap,
       JZ4725B_CODEC_REG_CR2,
       REG_CR2_ADC_ADWL_MASK,
       bit_width << REG_CR2_ADC_ADWL_OFFSET);

  regmap_update_bits(icdc->regmap,
       JZ4725B_CODEC_REG_CCR2,
       REG_CCR2_AFREQ_MASK,
       rate << REG_CCR2_AFREQ_OFFSET);
 }

 return 0;
}
