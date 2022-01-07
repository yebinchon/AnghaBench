
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_codec {int regmap; } ;


 int BIT (int ) ;
 int SUN4I_CODEC_DAC_FIFOC ;
 int SUN4I_CODEC_DAC_FIFOC_DAC_DRQ_EN ;
 int SUN4I_CODEC_DAC_FIFOC_FIFO_FLUSH ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sun4i_codec_start_playback(struct sun4i_codec *scodec)
{

 regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
      BIT(SUN4I_CODEC_DAC_FIFOC_FIFO_FLUSH),
      BIT(SUN4I_CODEC_DAC_FIFOC_FIFO_FLUSH));


 regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
      BIT(SUN4I_CODEC_DAC_FIFOC_DAC_DRQ_EN),
      BIT(SUN4I_CODEC_DAC_FIFOC_DAC_DRQ_EN));
}
