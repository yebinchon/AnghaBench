
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_mcdt_dev {int lock; int dev; } ;
struct sprd_mcdt_chan_callback {int dummy; } ;
struct sprd_mcdt_chan {int int_enable; int type; struct sprd_mcdt_chan_callback* cb; int id; scalar_t__ dma_enable; struct sprd_mcdt_dev* mcdt; } ;


 int EINVAL ;
 int MCDT_ADC_FIFO_AF_INT ;
 int MCDT_DAC_FIFO_AE_INT ;
 int MCDT_FIFO_LENGTH ;


 int dev_err (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprd_mcdt_adc_fifo_clear (struct sprd_mcdt_dev*,int ) ;
 int sprd_mcdt_adc_set_watermark (struct sprd_mcdt_dev*,int ,int ,int ) ;
 int sprd_mcdt_ap_int_enable (struct sprd_mcdt_dev*,int ,int) ;
 int sprd_mcdt_chan_int_en (struct sprd_mcdt_dev*,int ,int ,int) ;
 int sprd_mcdt_dac_fifo_clear (struct sprd_mcdt_dev*,int ) ;
 int sprd_mcdt_dac_set_watermark (struct sprd_mcdt_dev*,int ,int ,int ) ;

int sprd_mcdt_chan_int_enable(struct sprd_mcdt_chan *chan, u32 water_mark,
         struct sprd_mcdt_chan_callback *cb)
{
 struct sprd_mcdt_dev *mcdt = chan->mcdt;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&mcdt->lock, flags);

 if (chan->dma_enable || chan->int_enable) {
  dev_err(mcdt->dev, "Failed to set interrupt mode.\n");
  spin_unlock_irqrestore(&mcdt->lock, flags);
  return -EINVAL;
 }

 switch (chan->type) {
 case 129:
  sprd_mcdt_adc_fifo_clear(mcdt, chan->id);
  sprd_mcdt_adc_set_watermark(mcdt, chan->id, water_mark,
         MCDT_FIFO_LENGTH - 1);
  sprd_mcdt_chan_int_en(mcdt, chan->id,
          MCDT_ADC_FIFO_AF_INT, 1);
  sprd_mcdt_ap_int_enable(mcdt, chan->id, 1);
  break;

 case 128:
  sprd_mcdt_dac_fifo_clear(mcdt, chan->id);
  sprd_mcdt_dac_set_watermark(mcdt, chan->id,
         MCDT_FIFO_LENGTH - 1, water_mark);
  sprd_mcdt_chan_int_en(mcdt, chan->id,
          MCDT_DAC_FIFO_AE_INT, 1);
  sprd_mcdt_ap_int_enable(mcdt, chan->id, 1);
  break;

 default:
  dev_err(mcdt->dev, "Unsupported channel type\n");
  ret = -EINVAL;
 }

 if (!ret) {
  chan->cb = cb;
  chan->int_enable = 1;
 }

 spin_unlock_irqrestore(&mcdt->lock, flags);

 return ret;
}
