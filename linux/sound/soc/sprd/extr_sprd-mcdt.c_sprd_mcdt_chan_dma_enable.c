
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_mcdt_dev {int lock; int dev; } ;
struct sprd_mcdt_chan {int dma_enable; int type; int id; scalar_t__ int_enable; struct sprd_mcdt_dev* mcdt; } ;
typedef enum sprd_mcdt_dma_chan { ____Placeholder_sprd_mcdt_dma_chan } sprd_mcdt_dma_chan ;


 int EINVAL ;
 int MCDT_FIFO_LENGTH ;


 int SPRD_MCDT_DMA_CH4 ;
 int dev_err (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprd_mcdt_adc_dma_ack_select (struct sprd_mcdt_dev*,int ,int) ;
 int sprd_mcdt_adc_dma_chn_select (struct sprd_mcdt_dev*,int ,int) ;
 int sprd_mcdt_adc_dma_enable (struct sprd_mcdt_dev*,int ,int) ;
 int sprd_mcdt_adc_fifo_clear (struct sprd_mcdt_dev*,int ) ;
 int sprd_mcdt_adc_set_watermark (struct sprd_mcdt_dev*,int ,int ,int ) ;
 int sprd_mcdt_dac_dma_ack_select (struct sprd_mcdt_dev*,int ,int) ;
 int sprd_mcdt_dac_dma_chn_select (struct sprd_mcdt_dev*,int ,int) ;
 int sprd_mcdt_dac_dma_enable (struct sprd_mcdt_dev*,int ,int) ;
 int sprd_mcdt_dac_fifo_clear (struct sprd_mcdt_dev*,int ) ;
 int sprd_mcdt_dac_set_watermark (struct sprd_mcdt_dev*,int ,int ,int ) ;

int sprd_mcdt_chan_dma_enable(struct sprd_mcdt_chan *chan,
         enum sprd_mcdt_dma_chan dma_chan,
         u32 water_mark)
{
 struct sprd_mcdt_dev *mcdt = chan->mcdt;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&mcdt->lock, flags);

 if (chan->dma_enable || chan->int_enable ||
     dma_chan > SPRD_MCDT_DMA_CH4) {
  dev_err(mcdt->dev, "Failed to set DMA mode\n");
  spin_unlock_irqrestore(&mcdt->lock, flags);
  return -EINVAL;
 }

 switch (chan->type) {
 case 129:
  sprd_mcdt_adc_fifo_clear(mcdt, chan->id);
  sprd_mcdt_adc_set_watermark(mcdt, chan->id,
         water_mark, MCDT_FIFO_LENGTH - 1);
  sprd_mcdt_adc_dma_enable(mcdt, chan->id, 1);
  sprd_mcdt_adc_dma_chn_select(mcdt, chan->id, dma_chan);
  sprd_mcdt_adc_dma_ack_select(mcdt, chan->id, dma_chan);
  break;

 case 128:
  sprd_mcdt_dac_fifo_clear(mcdt, chan->id);
  sprd_mcdt_dac_set_watermark(mcdt, chan->id,
         MCDT_FIFO_LENGTH - 1, water_mark);
  sprd_mcdt_dac_dma_enable(mcdt, chan->id, 1);
  sprd_mcdt_dac_dma_chn_select(mcdt, chan->id, dma_chan);
  sprd_mcdt_dac_dma_ack_select(mcdt, chan->id, dma_chan);
  break;

 default:
  dev_err(mcdt->dev, "Unsupported channel type\n");
  ret = -EINVAL;
 }

 if (!ret)
  chan->dma_enable = 1;

 spin_unlock_irqrestore(&mcdt->lock, flags);

 return ret;
}
