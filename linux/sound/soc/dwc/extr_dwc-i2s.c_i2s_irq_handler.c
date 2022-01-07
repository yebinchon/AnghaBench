
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_i2s_dev {int dev; scalar_t__ use_pio; int i2s_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR (int) ;
 int ISR_RXDA ;
 int ISR_RXFO ;
 int ISR_TXFE ;
 int ISR_TXFO ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int ,char*,int) ;
 int dw_pcm_pop_rx (struct dw_i2s_dev*) ;
 int dw_pcm_push_tx (struct dw_i2s_dev*) ;
 int i2s_clear_irqs (struct dw_i2s_dev*,int ) ;
 int i2s_read_reg (int ,int ) ;

__attribute__((used)) static irqreturn_t i2s_irq_handler(int irq, void *dev_id)
{
 struct dw_i2s_dev *dev = dev_id;
 bool irq_valid = 0;
 u32 isr[4];
 int i;

 for (i = 0; i < 4; i++)
  isr[i] = i2s_read_reg(dev->i2s_base, ISR(i));

 i2s_clear_irqs(dev, SNDRV_PCM_STREAM_PLAYBACK);
 i2s_clear_irqs(dev, SNDRV_PCM_STREAM_CAPTURE);

 for (i = 0; i < 4; i++) {




  if ((isr[i] & ISR_TXFE) && (i == 0) && dev->use_pio) {
   dw_pcm_push_tx(dev);
   irq_valid = 1;
  }





  if ((isr[i] & ISR_RXDA) && (i == 0) && dev->use_pio) {
   dw_pcm_pop_rx(dev);
   irq_valid = 1;
  }


  if (isr[i] & ISR_TXFO) {
   dev_err(dev->dev, "TX overrun (ch_id=%d)\n", i);
   irq_valid = 1;
  }


  if (isr[i] & ISR_RXFO) {
   dev_err(dev->dev, "RX overrun (ch_id=%d)\n", i);
   irq_valid = 1;
  }
 }

 if (irq_valid)
  return IRQ_HANDLED;
 else
  return IRQ_NONE;
}
