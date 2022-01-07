
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct mtk_base_afe_memif {int irq_usage; int * substream; int const_irq; TYPE_2__* data; } ;
struct mtk_base_afe {int regmap; struct mtk_base_afe_memif* memif; } ;
struct TYPE_4__ {int agent_disable_shift; int agent_disable_reg; } ;
struct TYPE_3__ {size_t id; } ;


 int mtk_dynamic_irq_release (struct mtk_base_afe*,int) ;
 int mtk_regmap_update_bits (int ,int ,int,int,int ) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

void mtk_afe_fe_shutdown(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 struct mtk_base_afe_memif *memif = &afe->memif[rtd->cpu_dai->id];
 int irq_id;

 irq_id = memif->irq_usage;

 mtk_regmap_update_bits(afe->regmap, memif->data->agent_disable_reg,
          1, 1, memif->data->agent_disable_shift);

 if (!memif->const_irq) {
  mtk_dynamic_irq_release(afe, irq_id);
  memif->irq_usage = -1;
  memif->substream = ((void*)0);
 }
}
