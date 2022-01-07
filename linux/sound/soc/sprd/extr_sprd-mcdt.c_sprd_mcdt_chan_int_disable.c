
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_mcdt_dev {int lock; } ;
struct sprd_mcdt_chan {int int_enable; int type; int id; struct sprd_mcdt_dev* mcdt; } ;


 int MCDT_ADC_FIFO_AF_INT ;
 int MCDT_DAC_FIFO_AE_INT ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprd_mcdt_ap_int_enable (struct sprd_mcdt_dev*,int ,int) ;
 int sprd_mcdt_chan_int_clear (struct sprd_mcdt_dev*,int ,int ) ;
 int sprd_mcdt_chan_int_en (struct sprd_mcdt_dev*,int ,int ,int) ;

void sprd_mcdt_chan_int_disable(struct sprd_mcdt_chan *chan)
{
 struct sprd_mcdt_dev *mcdt = chan->mcdt;
 unsigned long flags;

 spin_lock_irqsave(&mcdt->lock, flags);

 if (!chan->int_enable) {
  spin_unlock_irqrestore(&mcdt->lock, flags);
  return;
 }

 switch (chan->type) {
 case 129:
  sprd_mcdt_chan_int_en(mcdt, chan->id,
          MCDT_ADC_FIFO_AF_INT, 0);
  sprd_mcdt_chan_int_clear(mcdt, chan->id, MCDT_ADC_FIFO_AF_INT);
  sprd_mcdt_ap_int_enable(mcdt, chan->id, 0);
  break;

 case 128:
  sprd_mcdt_chan_int_en(mcdt, chan->id,
          MCDT_DAC_FIFO_AE_INT, 0);
  sprd_mcdt_chan_int_clear(mcdt, chan->id, MCDT_DAC_FIFO_AE_INT);
  sprd_mcdt_ap_int_enable(mcdt, chan->id, 0);
  break;

 default:
  break;
 }

 chan->int_enable = 0;
 spin_unlock_irqrestore(&mcdt->lock, flags);
}
