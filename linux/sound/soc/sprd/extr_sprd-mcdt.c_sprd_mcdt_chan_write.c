
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_mcdt_dev {int lock; int dev; } ;
struct sprd_mcdt_chan {int id; scalar_t__ dma_enable; struct sprd_mcdt_dev* mcdt; } ;


 int EBUSY ;
 int EINVAL ;
 int MCDT_DAC_FIFO_REAL_FULL ;
 int dev_err (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ sprd_mcdt_chan_fifo_sts (struct sprd_mcdt_dev*,int ,int ) ;
 int sprd_mcdt_dac_fifo_avail (struct sprd_mcdt_dev*,int ) ;
 int sprd_mcdt_dac_write_fifo (struct sprd_mcdt_dev*,int ,int ) ;

int sprd_mcdt_chan_write(struct sprd_mcdt_chan *chan, char *tx_buf, u32 size)
{
 struct sprd_mcdt_dev *mcdt = chan->mcdt;
 unsigned long flags;
 int avail, i = 0, words = size / 4;
 u32 *buf = (u32 *)tx_buf;

 spin_lock_irqsave(&mcdt->lock, flags);

 if (chan->dma_enable) {
  dev_err(mcdt->dev,
   "Can not write data when DMA mode enabled\n");
  spin_unlock_irqrestore(&mcdt->lock, flags);
  return -EINVAL;
 }

 if (sprd_mcdt_chan_fifo_sts(mcdt, chan->id, MCDT_DAC_FIFO_REAL_FULL)) {
  dev_err(mcdt->dev, "Channel fifo is full now\n");
  spin_unlock_irqrestore(&mcdt->lock, flags);
  return -EBUSY;
 }

 avail = sprd_mcdt_dac_fifo_avail(mcdt, chan->id);
 if (size > avail) {
  dev_err(mcdt->dev,
   "Data size is larger than the available fifo size\n");
  spin_unlock_irqrestore(&mcdt->lock, flags);
  return -EBUSY;
 }

 while (i++ < words)
  sprd_mcdt_dac_write_fifo(mcdt, chan->id, *buf++);

 spin_unlock_irqrestore(&mcdt->lock, flags);
 return 0;
}
