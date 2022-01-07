
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_codec {int regmap; TYPE_1__* dev; int reg_adc_fifoc; } ;
struct snd_soc_pcm_runtime {int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {int of_node; } ;


 int BIT (int ) ;
 int SUN4I_CODEC_ADC_ACTL ;
 int SUN4I_CODEC_ADC_FIFOC_FIFO_FLUSH ;
 int SUN4I_CODEC_ADC_FIFOC_RX_TRIG_LEVEL ;
 int SUN4I_CODEC_DAC_TUNE ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int regmap_field_update_bits (int ,int,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct sun4i_codec* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int sun4i_codec_prepare_capture(struct snd_pcm_substream *substream,
           struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct sun4i_codec *scodec = snd_soc_card_get_drvdata(rtd->card);



 regmap_field_update_bits(scodec->reg_adc_fifoc,
     BIT(SUN4I_CODEC_ADC_FIFOC_FIFO_FLUSH),
     BIT(SUN4I_CODEC_ADC_FIFOC_FIFO_FLUSH));



 regmap_field_update_bits(scodec->reg_adc_fifoc,
     0xf << SUN4I_CODEC_ADC_FIFOC_RX_TRIG_LEVEL,
     0x7 << SUN4I_CODEC_ADC_FIFOC_RX_TRIG_LEVEL);






 if (of_device_is_compatible(scodec->dev->of_node,
        "allwinner,sun4i-a10-codec") ||
     of_device_is_compatible(scodec->dev->of_node,
        "allwinner,sun7i-a20-codec")) {
  regmap_update_bits(scodec->regmap, SUN4I_CODEC_ADC_ACTL,
       0x3 << 25,
       0x1 << 25);
 }

 if (of_device_is_compatible(scodec->dev->of_node,
        "allwinner,sun7i-a20-codec"))

  regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_TUNE,
       0x3 << 8,
       0x1 << 8);

 return 0;
}
