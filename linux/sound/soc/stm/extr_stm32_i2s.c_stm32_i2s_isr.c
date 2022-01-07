
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct stm32_i2s_data {int irq_lock; scalar_t__ substream; int regmap; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
typedef int irqreturn_t ;


 int I2S_IFCR_MASK ;
 unsigned long I2S_SR_OVR ;
 unsigned long I2S_SR_TIFRE ;
 unsigned long I2S_SR_UDR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int STM32_I2S_IER_REG ;
 int STM32_I2S_IFCR_REG ;
 int STM32_I2S_SR_REG ;
 int dev_dbg (int *,char*,...) ;
 int regmap_read (int ,int ,unsigned long*) ;
 int regmap_write_bits (int ,int ,int ,unsigned long) ;
 int snd_pcm_stop_xrun (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t stm32_i2s_isr(int irq, void *devid)
{
 struct stm32_i2s_data *i2s = (struct stm32_i2s_data *)devid;
 struct platform_device *pdev = i2s->pdev;
 u32 sr, ier;
 unsigned long flags;
 int err = 0;

 regmap_read(i2s->regmap, STM32_I2S_SR_REG, &sr);
 regmap_read(i2s->regmap, STM32_I2S_IER_REG, &ier);

 flags = sr & ier;
 if (!flags) {
  dev_dbg(&pdev->dev, "Spurious IRQ sr=0x%08x, ier=0x%08x\n",
   sr, ier);
  return IRQ_NONE;
 }

 regmap_write_bits(i2s->regmap, STM32_I2S_IFCR_REG,
     I2S_IFCR_MASK, flags);

 if (flags & I2S_SR_OVR) {
  dev_dbg(&pdev->dev, "Overrun\n");
  err = 1;
 }

 if (flags & I2S_SR_UDR) {
  dev_dbg(&pdev->dev, "Underrun\n");
  err = 1;
 }

 if (flags & I2S_SR_TIFRE)
  dev_dbg(&pdev->dev, "Frame error\n");

 spin_lock(&i2s->irq_lock);
 if (err && i2s->substream)
  snd_pcm_stop_xrun(i2s->substream);
 spin_unlock(&i2s->irq_lock);

 return IRQ_HANDLED;
}
