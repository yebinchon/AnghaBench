
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct mtk_base_afe {int regmap; } ;


 int AFE_MEMIF_PBUF_SIZE ;
 int AFE_MEMIF_PBUF_SIZE_DLM_MASK ;
 int AFE_MEMIF_PBUF_SIZE_PAIR_INTERLEAVE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int mtk_afe_fe_hw_params (struct snd_pcm_substream*,struct snd_pcm_hw_params*,struct snd_soc_dai*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mt2701_simple_fe_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params,
          struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 int stream_dir = substream->stream;


 if (stream_dir == SNDRV_PCM_STREAM_PLAYBACK)
  regmap_update_bits(afe->regmap,
       AFE_MEMIF_PBUF_SIZE,
       AFE_MEMIF_PBUF_SIZE_DLM_MASK,
       AFE_MEMIF_PBUF_SIZE_PAIR_INTERLEAVE);

 return mtk_afe_fe_hw_params(substream, params, dai);
}
