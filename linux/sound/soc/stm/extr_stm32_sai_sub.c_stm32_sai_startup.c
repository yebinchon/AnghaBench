
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_sub_data {int regmap; scalar_t__ master; int sai_ck; int irq_lock; struct snd_pcm_substream* substream; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int runtime; } ;


 int SAI_XCLRFR_MASK ;
 int SAI_XCR2_MUTECNT_MASK ;
 int SAI_XIMR_AFSDETIE ;
 int SAI_XIMR_LFSDETIE ;
 int SAI_XIMR_MASK ;
 int SAI_XIMR_MUTEDETIE ;
 int SAI_XIMR_OVRUDRIE ;
 int SAI_XIMR_WCKCFGIE ;
 int SNDRV_PCM_FMTBIT_S32_LE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int STM_SAI_CLRFR_REGX ;
 int STM_SAI_CR2_REGX ;
 int STM_SAI_IMR_REGX ;
 scalar_t__ STM_SAI_IS_CAPTURE (struct stm32_sai_sub_data*) ;
 scalar_t__ STM_SAI_PROTOCOL_IS_SPDIF (struct stm32_sai_sub_data*) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 int snd_pcm_hw_constraint_mask64 (int ,int ,int ) ;
 int snd_pcm_hw_constraint_single (int ,int ,int) ;
 struct stm32_sai_sub_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int stm32_sai_startup(struct snd_pcm_substream *substream,
        struct snd_soc_dai *cpu_dai)
{
 struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 int imr, cr2, ret;
 unsigned long flags;

 spin_lock_irqsave(&sai->irq_lock, flags);
 sai->substream = substream;
 spin_unlock_irqrestore(&sai->irq_lock, flags);

 if (STM_SAI_PROTOCOL_IS_SPDIF(sai)) {
  snd_pcm_hw_constraint_mask64(substream->runtime,
          SNDRV_PCM_HW_PARAM_FORMAT,
          SNDRV_PCM_FMTBIT_S32_LE);
  snd_pcm_hw_constraint_single(substream->runtime,
          SNDRV_PCM_HW_PARAM_CHANNELS, 2);
 }

 ret = clk_prepare_enable(sai->sai_ck);
 if (ret < 0) {
  dev_err(cpu_dai->dev, "Failed to enable clock: %d\n", ret);
  return ret;
 }


 regmap_write_bits(sai->regmap, STM_SAI_CLRFR_REGX,
     SAI_XCLRFR_MASK, SAI_XCLRFR_MASK);

 imr = SAI_XIMR_OVRUDRIE;
 if (STM_SAI_IS_CAPTURE(sai)) {
  regmap_read(sai->regmap, STM_SAI_CR2_REGX, &cr2);
  if (cr2 & SAI_XCR2_MUTECNT_MASK)
   imr |= SAI_XIMR_MUTEDETIE;
 }

 if (sai->master)
  imr |= SAI_XIMR_WCKCFGIE;
 else
  imr |= SAI_XIMR_AFSDETIE | SAI_XIMR_LFSDETIE;

 regmap_update_bits(sai->regmap, STM_SAI_IMR_REGX,
      SAI_XIMR_MASK, imr);

 return 0;
}
