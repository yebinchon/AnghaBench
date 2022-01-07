
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_mcdt_dev {int lock; int dev; } ;
struct sprd_mcdt_chan {int id; scalar_t__ dma_enable; struct sprd_mcdt_dev* mcdt; } ;


 int EBUSY ;
 int EINVAL ;
 int MCDT_ADC_FIFO_REAL_EMPTY ;
 int dev_err (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprd_mcdt_adc_fifo_avail (struct sprd_mcdt_dev*,int ) ;
 int sprd_mcdt_adc_read_fifo (struct sprd_mcdt_dev*,int ,int ) ;
 scalar_t__ sprd_mcdt_chan_fifo_sts (struct sprd_mcdt_dev*,int ,int ) ;

int sprd_mcdt_chan_read(struct sprd_mcdt_chan *chan, char *rx_buf, u32 size)
{
 struct sprd_mcdt_dev *mcdt = chan->mcdt;
 unsigned long flags;
 int i = 0, avail, words = size / 4;
 u32 *buf = (u32 *)rx_buf;

 spin_lock_irqsave(&mcdt->lock, flags);

 if (chan->dma_enable) {
  dev_err(mcdt->dev, "Can not read data when DMA mode enabled\n");
  spin_unlock_irqrestore(&mcdt->lock, flags);
  return -EINVAL;
 }

 if (sprd_mcdt_chan_fifo_sts(mcdt, chan->id, MCDT_ADC_FIFO_REAL_EMPTY)) {
  dev_err(mcdt->dev, "Channel fifo is empty\n");
  spin_unlock_irqrestore(&mcdt->lock, flags);
  return -EBUSY;
 }

 avail = sprd_mcdt_adc_fifo_avail(mcdt, chan->id);
 if (size > avail)
  words = avail / 4;

 while (i++ < words)
  sprd_mcdt_adc_read_fifo(mcdt, chan->id, buf++);

 spin_unlock_irqrestore(&mcdt->lock, flags);
 return words * 4;
}
