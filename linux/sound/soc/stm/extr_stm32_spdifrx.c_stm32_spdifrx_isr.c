
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spdifrx_data {int regmap; struct platform_device* pdev; struct snd_pcm_substream* substream; } ;
struct snd_pcm_substream {int dummy; } ;
struct platform_device {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SNDRV_PCM_STATE_DISCONNECTED ;
 unsigned int SPDIFRX_CR_SPDIFENSET (int ) ;
 int SPDIFRX_CR_SPDIFEN_MASK ;
 unsigned int SPDIFRX_IMR_IFEIE ;
 int SPDIFRX_SPDIFEN_DISABLE ;
 int SPDIFRX_SPDIFEN_ENABLE ;
 unsigned int SPDIFRX_SR_FERR ;
 unsigned int SPDIFRX_SR_OVR ;
 unsigned int SPDIFRX_SR_PERR ;
 unsigned int SPDIFRX_SR_SBD ;
 unsigned int SPDIFRX_SR_SERR ;
 unsigned int SPDIFRX_SR_SYNCD ;
 unsigned int SPDIFRX_SR_TERR ;
 int SPDIFRX_XIFCR_MASK ;
 unsigned int SPDIFRX_XIMR_MASK ;
 int STM32_SPDIFRX_CR ;
 int STM32_SPDIFRX_IFCR ;
 int STM32_SPDIFRX_IMR ;
 int STM32_SPDIFRX_SR ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,unsigned int,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int snd_pcm_stop (struct snd_pcm_substream*,int ) ;
 int snd_pcm_stop_xrun (struct snd_pcm_substream*) ;

__attribute__((used)) static irqreturn_t stm32_spdifrx_isr(int irq, void *devid)
{
 struct stm32_spdifrx_data *spdifrx = (struct stm32_spdifrx_data *)devid;
 struct snd_pcm_substream *substream = spdifrx->substream;
 struct platform_device *pdev = spdifrx->pdev;
 unsigned int cr, mask, sr, imr;
 unsigned int flags;
 int err = 0, err_xrun = 0;

 regmap_read(spdifrx->regmap, STM32_SPDIFRX_SR, &sr);
 regmap_read(spdifrx->regmap, STM32_SPDIFRX_IMR, &imr);

 mask = imr & SPDIFRX_XIMR_MASK;

 if (mask & SPDIFRX_IMR_IFEIE)
  mask |= (SPDIFRX_IMR_IFEIE << 1) | (SPDIFRX_IMR_IFEIE << 2);

 flags = sr & mask;
 if (!flags) {
  dev_err(&pdev->dev, "Unexpected IRQ. rflags=%#x, imr=%#x\n",
   sr, imr);
  return IRQ_NONE;
 }


 regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_IFCR,
      SPDIFRX_XIFCR_MASK, flags);

 if (flags & SPDIFRX_SR_PERR) {
  dev_dbg(&pdev->dev, "Parity error\n");
  err_xrun = 1;
 }

 if (flags & SPDIFRX_SR_OVR) {
  dev_dbg(&pdev->dev, "Overrun error\n");
  err_xrun = 1;
 }

 if (flags & SPDIFRX_SR_SBD)
  dev_dbg(&pdev->dev, "Synchronization block detected\n");

 if (flags & SPDIFRX_SR_SYNCD) {
  dev_dbg(&pdev->dev, "Synchronization done\n");


  cr = SPDIFRX_CR_SPDIFENSET(SPDIFRX_SPDIFEN_ENABLE);
  regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_CR,
       SPDIFRX_CR_SPDIFEN_MASK, cr);
 }

 if (flags & SPDIFRX_SR_FERR) {
  dev_dbg(&pdev->dev, "Frame error\n");
  err = 1;
 }

 if (flags & SPDIFRX_SR_SERR) {
  dev_dbg(&pdev->dev, "Synchronization error\n");
  err = 1;
 }

 if (flags & SPDIFRX_SR_TERR) {
  dev_dbg(&pdev->dev, "Timeout error\n");
  err = 1;
 }

 if (err) {

  cr = SPDIFRX_CR_SPDIFENSET(SPDIFRX_SPDIFEN_DISABLE);
  regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_CR,
       SPDIFRX_CR_SPDIFEN_MASK, cr);

  if (substream)
   snd_pcm_stop(substream, SNDRV_PCM_STATE_DISCONNECTED);

  return IRQ_HANDLED;
 }

 if (err_xrun && substream)
  snd_pcm_stop_xrun(substream);

 return IRQ_HANDLED;
}
