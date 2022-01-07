
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct mtk_base_memif_data {int agent_disable_shift; int agent_disable_reg; } ;
struct mtk_base_afe_memif {struct mtk_base_memif_data* data; scalar_t__ substream; } ;
struct mtk_base_afe {int regmap; struct mtk_base_afe_memif* memif; } ;


 int EBUSY ;
 int MT2701_MEMIF_DL1 ;
 int MT2701_MEMIF_DL_SINGLE_NUM ;
 int mtk_afe_fe_startup (struct snd_pcm_substream*,struct snd_soc_dai*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mt2701_dlm_fe_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 struct mtk_base_afe_memif *memif_tmp;
 const struct mtk_base_memif_data *memif_data;
 int i;

 for (i = MT2701_MEMIF_DL1; i < MT2701_MEMIF_DL_SINGLE_NUM; ++i) {
  memif_tmp = &afe->memif[i];
  if (memif_tmp->substream)
   return -EBUSY;
 }


 for (i = MT2701_MEMIF_DL1; i < MT2701_MEMIF_DL_SINGLE_NUM; ++i) {
  memif_data = afe->memif[i].data;
  regmap_update_bits(afe->regmap,
       memif_data->agent_disable_reg,
       1 << memif_data->agent_disable_shift,
       0 << memif_data->agent_disable_shift);
 }

 return mtk_afe_fe_startup(substream, dai);
}
