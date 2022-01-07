
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int addr_width; } ;
struct sun4i_codec {TYPE_1__ playback_dma_data; int regmap; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_4__ {int min; } ;


 int BIT (int ) ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int SNDRV_PCM_HW_PARAM_SAMPLE_BITS ;
 int SUN4I_CODEC_DAC_FIFOC ;
 int SUN4I_CODEC_DAC_FIFOC_DAC_FS ;
 int SUN4I_CODEC_DAC_FIFOC_MONO_EN ;
 int SUN4I_CODEC_DAC_FIFOC_TX_FIFO_MODE ;
 int SUN4I_CODEC_DAC_FIFOC_TX_SAMPLE_BITS ;
 TYPE_2__* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int sun4i_codec_hw_params_playback(struct sun4i_codec *scodec,
       struct snd_pcm_hw_params *params,
       unsigned int hwrate)
{
 u32 val;


 regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
      7 << SUN4I_CODEC_DAC_FIFOC_DAC_FS,
      hwrate << SUN4I_CODEC_DAC_FIFOC_DAC_FS);


 if (params_channels(params) == 1)
  val = BIT(SUN4I_CODEC_DAC_FIFOC_MONO_EN);
 else
  val = 0;

 regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
      BIT(SUN4I_CODEC_DAC_FIFOC_MONO_EN),
      val);


 if (hw_param_interval(params, SNDRV_PCM_HW_PARAM_SAMPLE_BITS)->min == 32) {
  regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
       BIT(SUN4I_CODEC_DAC_FIFOC_TX_SAMPLE_BITS),
       BIT(SUN4I_CODEC_DAC_FIFOC_TX_SAMPLE_BITS));


  regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
       BIT(SUN4I_CODEC_DAC_FIFOC_TX_FIFO_MODE),
       0);

  scodec->playback_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 } else {
  regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
       BIT(SUN4I_CODEC_DAC_FIFOC_TX_SAMPLE_BITS),
       0);


  regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
       BIT(SUN4I_CODEC_DAC_FIFOC_TX_FIFO_MODE),
       BIT(SUN4I_CODEC_DAC_FIFOC_TX_FIFO_MODE));

  scodec->playback_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES;
 }

 return 0;
}
