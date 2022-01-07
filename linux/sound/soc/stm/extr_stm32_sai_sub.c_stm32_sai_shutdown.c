
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_sub_data {int irq_lock; int * substream; int sai_ck; int regmap; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int SAI_XIMR_MASK ;
 int STM_SAI_IMR_REGX ;
 int clk_disable_unprepare (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct stm32_sai_sub_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void stm32_sai_shutdown(struct snd_pcm_substream *substream,
          struct snd_soc_dai *cpu_dai)
{
 struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned long flags;

 regmap_update_bits(sai->regmap, STM_SAI_IMR_REGX, SAI_XIMR_MASK, 0);

 clk_disable_unprepare(sai->sai_ck);

 spin_lock_irqsave(&sai->irq_lock, flags);
 sai->substream = ((void*)0);
 spin_unlock_irqrestore(&sai->irq_lock, flags);
}
