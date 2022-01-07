
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_codec {int clk_module; int regmap; } ;
struct snd_soc_pcm_runtime {int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int runtime; struct snd_soc_pcm_runtime* private_data; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int SUN4I_CODEC_DAC_FIFOC ;
 int SUN4I_CODEC_DAC_FIFOC_DRQ_CLR_CNT ;
 int clk_prepare_enable (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;
 struct sun4i_codec* snd_soc_card_get_drvdata (int ) ;
 int sun4i_codec_constraints ;

__attribute__((used)) static int sun4i_codec_startup(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct sun4i_codec *scodec = snd_soc_card_get_drvdata(rtd->card);

 snd_pcm_hw_constraint_list(substream->runtime, 0,
    SNDRV_PCM_HW_PARAM_RATE, &sun4i_codec_constraints);





 regmap_update_bits(scodec->regmap, SUN4I_CODEC_DAC_FIFOC,
      3 << SUN4I_CODEC_DAC_FIFOC_DRQ_CLR_CNT,
      3 << SUN4I_CODEC_DAC_FIFOC_DRQ_CLR_CNT);

 return clk_prepare_enable(scodec->clk_module);
}
