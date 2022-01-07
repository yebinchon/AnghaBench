
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr_width; } ;
struct sun4i_codec {TYPE_1__ capture_dma_data; int reg_adc_fifoc; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_4__ {int min; } ;


 int BIT (int ) ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int SNDRV_PCM_HW_PARAM_SAMPLE_BITS ;
 int SUN4I_CODEC_ADC_FIFOC_ADC_FS ;
 int SUN4I_CODEC_ADC_FIFOC_MONO_EN ;
 int SUN4I_CODEC_ADC_FIFOC_RX_FIFO_MODE ;
 int SUN4I_CODEC_ADC_FIFOC_RX_SAMPLE_BITS ;
 TYPE_2__* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int regmap_field_update_bits (int ,int,int) ;

__attribute__((used)) static int sun4i_codec_hw_params_capture(struct sun4i_codec *scodec,
      struct snd_pcm_hw_params *params,
      unsigned int hwrate)
{

 regmap_field_update_bits(scodec->reg_adc_fifoc,
     7 << SUN4I_CODEC_ADC_FIFOC_ADC_FS,
     hwrate << SUN4I_CODEC_ADC_FIFOC_ADC_FS);


 if (params_channels(params) == 1)
  regmap_field_update_bits(scodec->reg_adc_fifoc,
      BIT(SUN4I_CODEC_ADC_FIFOC_MONO_EN),
      BIT(SUN4I_CODEC_ADC_FIFOC_MONO_EN));
 else
  regmap_field_update_bits(scodec->reg_adc_fifoc,
      BIT(SUN4I_CODEC_ADC_FIFOC_MONO_EN),
      0);


 if (hw_param_interval(params, SNDRV_PCM_HW_PARAM_SAMPLE_BITS)->min == 32) {
  regmap_field_update_bits(scodec->reg_adc_fifoc,
       BIT(SUN4I_CODEC_ADC_FIFOC_RX_SAMPLE_BITS),
       BIT(SUN4I_CODEC_ADC_FIFOC_RX_SAMPLE_BITS));

  regmap_field_update_bits(scodec->reg_adc_fifoc,
       BIT(SUN4I_CODEC_ADC_FIFOC_RX_FIFO_MODE),
       0);

  scodec->capture_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 } else {
  regmap_field_update_bits(scodec->reg_adc_fifoc,
       BIT(SUN4I_CODEC_ADC_FIFOC_RX_SAMPLE_BITS),
       0);


  regmap_field_update_bits(scodec->reg_adc_fifoc,
       BIT(SUN4I_CODEC_ADC_FIFOC_RX_FIFO_MODE),
       BIT(SUN4I_CODEC_ADC_FIFOC_RX_FIFO_MODE));

  scodec->capture_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES;
 }

 return 0;
}
