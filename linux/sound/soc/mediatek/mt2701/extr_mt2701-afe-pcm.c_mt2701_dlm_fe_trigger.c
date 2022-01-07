
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct mtk_base_afe_memif {TYPE_1__* data; } ;
struct mtk_base_afe {int regmap; struct mtk_base_afe_memif* memif; } ;
struct TYPE_2__ {int enable_shift; int enable_reg; } ;


 int EINVAL ;
 size_t MT2701_MEMIF_DL1 ;




 int mtk_afe_fe_trigger (struct snd_pcm_substream*,int,struct snd_soc_dai*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mt2701_dlm_fe_trigger(struct snd_pcm_substream *substream,
     int cmd, struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 struct mtk_base_afe_memif *memif_tmp = &afe->memif[MT2701_MEMIF_DL1];

 switch (cmd) {
 case 130:
 case 131:
  regmap_update_bits(afe->regmap, memif_tmp->data->enable_reg,
       1 << memif_tmp->data->enable_shift,
       1 << memif_tmp->data->enable_shift);
  mtk_afe_fe_trigger(substream, cmd, dai);
  return 0;
 case 129:
 case 128:
  mtk_afe_fe_trigger(substream, cmd, dai);
  regmap_update_bits(afe->regmap, memif_tmp->data->enable_reg,
       1 << memif_tmp->data->enable_shift, 0);

  return 0;
 default:
  return -EINVAL;
 }
}
