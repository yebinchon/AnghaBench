
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct mtk_base_memif_data {int agent_disable_shift; int agent_disable_reg; } ;
struct mtk_base_afe {int regmap; TYPE_1__* memif; } ;
struct TYPE_2__ {struct mtk_base_memif_data* data; } ;


 int MT2701_MEMIF_DL1 ;
 int MT2701_MEMIF_DL_SINGLE_NUM ;
 void mtk_afe_fe_shutdown (struct snd_pcm_substream*,struct snd_soc_dai*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void mt2701_dlm_fe_shutdown(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 const struct mtk_base_memif_data *memif_data;
 int i;

 for (i = MT2701_MEMIF_DL1; i < MT2701_MEMIF_DL_SINGLE_NUM; ++i) {
  memif_data = afe->memif[i].data;
  regmap_update_bits(afe->regmap,
       memif_data->agent_disable_reg,
       1 << memif_data->agent_disable_shift,
       1 << memif_data->agent_disable_shift);
 }

 return mtk_afe_fe_shutdown(substream, dai);
}
