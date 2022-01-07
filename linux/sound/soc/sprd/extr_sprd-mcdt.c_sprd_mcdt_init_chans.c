
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_mcdt_dev {struct sprd_mcdt_chan* chan; } ;
struct sprd_mcdt_chan {int id; int list; struct sprd_mcdt_dev* mcdt; scalar_t__ fifo_phys; int type; } ;
struct resource {scalar_t__ start; } ;


 int INIT_LIST_HEAD (int *) ;
 int MCDT_ADC_CHANNEL_NUM ;
 scalar_t__ MCDT_CH0_RXD ;
 scalar_t__ MCDT_CH0_TXD ;
 int MCDT_CHANNEL_NUM ;
 int SPRD_MCDT_ADC_CHAN ;
 int SPRD_MCDT_DAC_CHAN ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprd_mcdt_chan_list ;
 int sprd_mcdt_list_mutex ;

__attribute__((used)) static void sprd_mcdt_init_chans(struct sprd_mcdt_dev *mcdt,
     struct resource *res)
{
 int i;

 for (i = 0; i < MCDT_CHANNEL_NUM; i++) {
  struct sprd_mcdt_chan *chan = &mcdt->chan[i];

  if (i < MCDT_ADC_CHANNEL_NUM) {
   chan->id = i;
   chan->type = SPRD_MCDT_ADC_CHAN;
   chan->fifo_phys = res->start + MCDT_CH0_RXD + i * 4;
  } else {
   chan->id = i - MCDT_ADC_CHANNEL_NUM;
   chan->type = SPRD_MCDT_DAC_CHAN;
   chan->fifo_phys = res->start + MCDT_CH0_TXD +
    (i - MCDT_ADC_CHANNEL_NUM) * 4;
  }

  chan->mcdt = mcdt;
  INIT_LIST_HEAD(&chan->list);

  mutex_lock(&sprd_mcdt_list_mutex);
  list_add_tail(&chan->list, &sprd_mcdt_chan_list);
  mutex_unlock(&sprd_mcdt_list_mutex);
 }
}
