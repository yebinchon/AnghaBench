
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sun4i_codec {int regmap; } ;
struct snd_soc_pcm_runtime {int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {int rate; } ;


 int BIT (int ) ;
 int SUN4I_CODEC_DAC_FIFOC ;
 int SUN4I_CODEC_DAC_FIFOC_FIFO_FLUSH ;
 int SUN4I_CODEC_DAC_FIFOC_FIR_VERSION ;
 int SUN4I_CODEC_DAC_FIFOC_SEND_LASAT ;
 int SUN4I_CODEC_DAC_FIFOC_TX_TRIG_LEVEL ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct sun4i_codec* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int sun4i_codec_prepare_playback(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct sun4i_codec *scodec = snd_soc_card_get_drvdata(rtd->card);
 u32 val;


 regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
      BIT(SUN4I_CODEC_DAC_FIFOC_FIFO_FLUSH),
      BIT(SUN4I_CODEC_DAC_FIFOC_FIFO_FLUSH));


 regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
      0x3f << SUN4I_CODEC_DAC_FIFOC_TX_TRIG_LEVEL,
      0xf << SUN4I_CODEC_DAC_FIFOC_TX_TRIG_LEVEL);

 if (substream->runtime->rate > 32000)

  val = 0;
 else

  val = BIT(SUN4I_CODEC_DAC_FIFOC_FIR_VERSION);

 regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
      BIT(SUN4I_CODEC_DAC_FIFOC_FIR_VERSION),
      val);


 regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
      BIT(SUN4I_CODEC_DAC_FIFOC_SEND_LASAT),
      0);

 return 0;
}
