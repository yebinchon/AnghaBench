
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_mcdt_dev {int lock; } ;
struct sprd_mcdt_chan {int dma_enable; int type; int id; struct sprd_mcdt_dev* mcdt; } ;




 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprd_mcdt_adc_dma_enable (struct sprd_mcdt_dev*,int ,int) ;
 int sprd_mcdt_adc_fifo_clear (struct sprd_mcdt_dev*,int ) ;
 int sprd_mcdt_dac_dma_enable (struct sprd_mcdt_dev*,int ,int) ;
 int sprd_mcdt_dac_fifo_clear (struct sprd_mcdt_dev*,int ) ;

void sprd_mcdt_chan_dma_disable(struct sprd_mcdt_chan *chan)
{
 struct sprd_mcdt_dev *mcdt = chan->mcdt;
 unsigned long flags;

 spin_lock_irqsave(&mcdt->lock, flags);

 if (!chan->dma_enable) {
  spin_unlock_irqrestore(&mcdt->lock, flags);
  return;
 }

 switch (chan->type) {
 case 129:
  sprd_mcdt_adc_dma_enable(mcdt, chan->id, 0);
  sprd_mcdt_adc_fifo_clear(mcdt, chan->id);
  break;

 case 128:
  sprd_mcdt_dac_dma_enable(mcdt, chan->id, 0);
  sprd_mcdt_dac_fifo_clear(mcdt, chan->id);
  break;

 default:
  break;
 }

 chan->dma_enable = 0;
 spin_unlock_irqrestore(&mcdt->lock, flags);
}
