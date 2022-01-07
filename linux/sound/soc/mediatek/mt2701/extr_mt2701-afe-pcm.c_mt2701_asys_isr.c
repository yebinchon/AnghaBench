
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_base_afe_memif {size_t irq_usage; int substream; } ;
struct mtk_base_afe_irq {TYPE_1__* irq_data; } ;
struct mtk_base_afe {struct mtk_base_afe_irq* irqs; struct mtk_base_afe_memif* memif; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int irq_clr_shift; } ;


 int ASYS_IRQ_CLR ;
 int ASYS_IRQ_STATUS ;
 int IRQ_HANDLED ;
 int MT2701_MEMIF_NUM ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static irqreturn_t mt2701_asys_isr(int irq_id, void *dev)
{
 int id;
 struct mtk_base_afe *afe = dev;
 struct mtk_base_afe_memif *memif;
 struct mtk_base_afe_irq *irq;
 u32 status;

 regmap_read(afe->regmap, ASYS_IRQ_STATUS, &status);
 regmap_write(afe->regmap, ASYS_IRQ_CLR, status);

 for (id = 0; id < MT2701_MEMIF_NUM; ++id) {
  memif = &afe->memif[id];
  if (memif->irq_usage < 0)
   continue;

  irq = &afe->irqs[memif->irq_usage];
  if (status & 1 << irq->irq_data->irq_clr_shift)
   snd_pcm_period_elapsed(memif->substream);
 }

 return IRQ_HANDLED;
}
