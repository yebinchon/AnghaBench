
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sprd_mcdt_dev {int lock; struct sprd_mcdt_chan* chan; } ;
struct sprd_mcdt_chan {TYPE_1__* cb; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int data; int (* notify ) (int ) ;} ;


 int IRQ_HANDLED ;
 int MCDT_ADC_CHANNEL_NUM ;
 int MCDT_ADC_FIFO_AF_INT ;
 int MCDT_DAC_CHANNEL_NUM ;
 int MCDT_DAC_FIFO_AE_INT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprd_mcdt_chan_int_clear (struct sprd_mcdt_dev*,int,int ) ;
 scalar_t__ sprd_mcdt_chan_int_sts (struct sprd_mcdt_dev*,int,int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static irqreturn_t sprd_mcdt_irq_handler(int irq, void *dev_id)
{
 struct sprd_mcdt_dev *mcdt = (struct sprd_mcdt_dev *)dev_id;
 int i;

 spin_lock(&mcdt->lock);

 for (i = 0; i < MCDT_ADC_CHANNEL_NUM; i++) {
  if (sprd_mcdt_chan_int_sts(mcdt, i, MCDT_ADC_FIFO_AF_INT)) {
   struct sprd_mcdt_chan *chan = &mcdt->chan[i];

   sprd_mcdt_chan_int_clear(mcdt, i, MCDT_ADC_FIFO_AF_INT);
   if (chan->cb)
    chan->cb->notify(chan->cb->data);
  }
 }

 for (i = 0; i < MCDT_DAC_CHANNEL_NUM; i++) {
  if (sprd_mcdt_chan_int_sts(mcdt, i, MCDT_DAC_FIFO_AE_INT)) {
   struct sprd_mcdt_chan *chan =
    &mcdt->chan[i + MCDT_ADC_CHANNEL_NUM];

   sprd_mcdt_chan_int_clear(mcdt, i, MCDT_DAC_FIFO_AE_INT);
   if (chan->cb)
    chan->cb->notify(chan->cb->data);
  }
 }

 spin_unlock(&mcdt->lock);

 return IRQ_HANDLED;
}
