
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_sub_data {int irq_lock; scalar_t__ substream; int regmap; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
typedef scalar_t__ snd_pcm_state_t ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SAI_XCLRFR_MASK ;
 unsigned int SAI_XIMR_AFSDETIE ;
 unsigned int SAI_XIMR_CNRDYIE ;
 unsigned int SAI_XIMR_LFSDETIE ;
 unsigned int SAI_XIMR_MUTEDETIE ;
 unsigned int SAI_XIMR_OVRUDRIE ;
 unsigned int SAI_XIMR_WCKCFGIE ;
 scalar_t__ SNDRV_PCM_STATE_DISCONNECTED ;
 scalar_t__ SNDRV_PCM_STATE_RUNNING ;
 scalar_t__ SNDRV_PCM_STATE_XRUN ;
 int STM_SAI_CLRFR_REGX ;
 int STM_SAI_IMR_REGX ;
 scalar_t__ STM_SAI_IS_PLAYBACK (struct stm32_sai_sub_data*) ;
 int STM_SAI_SR_REGX ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 int snd_pcm_stop_xrun (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t stm32_sai_isr(int irq, void *devid)
{
 struct stm32_sai_sub_data *sai = (struct stm32_sai_sub_data *)devid;
 struct platform_device *pdev = sai->pdev;
 unsigned int sr, imr, flags;
 snd_pcm_state_t status = SNDRV_PCM_STATE_RUNNING;

 regmap_read(sai->regmap, STM_SAI_IMR_REGX, &imr);
 regmap_read(sai->regmap, STM_SAI_SR_REGX, &sr);

 flags = sr & imr;
 if (!flags)
  return IRQ_NONE;

 regmap_write_bits(sai->regmap, STM_SAI_CLRFR_REGX, SAI_XCLRFR_MASK,
     SAI_XCLRFR_MASK);

 if (!sai->substream) {
  dev_err(&pdev->dev, "Device stopped. Spurious IRQ 0x%x\n", sr);
  return IRQ_NONE;
 }

 if (flags & SAI_XIMR_OVRUDRIE) {
  dev_err(&pdev->dev, "IRQ %s\n",
   STM_SAI_IS_PLAYBACK(sai) ? "underrun" : "overrun");
  status = SNDRV_PCM_STATE_XRUN;
 }

 if (flags & SAI_XIMR_MUTEDETIE)
  dev_dbg(&pdev->dev, "IRQ mute detected\n");

 if (flags & SAI_XIMR_WCKCFGIE) {
  dev_err(&pdev->dev, "IRQ wrong clock configuration\n");
  status = SNDRV_PCM_STATE_DISCONNECTED;
 }

 if (flags & SAI_XIMR_CNRDYIE)
  dev_err(&pdev->dev, "IRQ Codec not ready\n");

 if (flags & SAI_XIMR_AFSDETIE) {
  dev_err(&pdev->dev, "IRQ Anticipated frame synchro\n");
  status = SNDRV_PCM_STATE_XRUN;
 }

 if (flags & SAI_XIMR_LFSDETIE) {
  dev_err(&pdev->dev, "IRQ Late frame synchro\n");
  status = SNDRV_PCM_STATE_XRUN;
 }

 spin_lock(&sai->irq_lock);
 if (status != SNDRV_PCM_STATE_RUNNING && sai->substream)
  snd_pcm_stop_xrun(sai->substream);
 spin_unlock(&sai->irq_lock);

 return IRQ_HANDLED;
}
