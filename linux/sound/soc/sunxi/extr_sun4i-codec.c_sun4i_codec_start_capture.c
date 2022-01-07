
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_codec {int reg_adc_fifoc; } ;


 int BIT (int ) ;
 int SUN4I_CODEC_ADC_FIFOC_ADC_DRQ_EN ;
 int regmap_field_update_bits (int ,int ,int ) ;

__attribute__((used)) static void sun4i_codec_start_capture(struct sun4i_codec *scodec)
{

 regmap_field_update_bits(scodec->reg_adc_fifoc,
     BIT(SUN4I_CODEC_ADC_FIFOC_ADC_DRQ_EN),
     BIT(SUN4I_CODEC_ADC_FIFOC_ADC_DRQ_EN));
}
