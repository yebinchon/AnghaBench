
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniperif {scalar_t__ state; int irq_lock; int substream; int dev; scalar_t__ underflow_enabled; } ;
typedef int irqreturn_t ;


 int EPERM ;
 unsigned int GET_UNIPERIF_ITS (struct uniperif*) ;
 unsigned int GET_UNIPERIF_STATUS_1_UNDERFLOW_DURATION (struct uniperif*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SET_UNIPERIF_BIT_CONTROL_CLR_UNDERFLOW_DURATION (struct uniperif*) ;
 int SET_UNIPERIF_ITM_BCLR_DMA_ERROR (struct uniperif*) ;
 int SET_UNIPERIF_ITM_BCLR_FIFO_ERROR (struct uniperif*) ;
 int SET_UNIPERIF_ITS_BCLR (struct uniperif*,unsigned int) ;
 unsigned int UNIPERIF_ITM_UNDERFLOW_REC_DONE_MASK (struct uniperif*) ;
 unsigned int UNIPERIF_ITM_UNDERFLOW_REC_FAILED_MASK (struct uniperif*) ;
 unsigned int UNIPERIF_ITS_DMA_ERROR_MASK (struct uniperif*) ;
 unsigned int UNIPERIF_ITS_FIFO_ERROR_MASK (struct uniperif*) ;
 scalar_t__ UNIPERIF_STATE_STARTED ;
 scalar_t__ UNIPERIF_STATE_STOPPED ;
 scalar_t__ UNIPERIF_STATE_UNDERFLOW ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*) ;
 int snd_pcm_stop_xrun (int ) ;
 int snd_pcm_stream_lock (int ) ;
 int snd_pcm_stream_unlock (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static irqreturn_t uni_player_irq_handler(int irq, void *dev_id)
{
 irqreturn_t ret = IRQ_NONE;
 struct uniperif *player = dev_id;
 unsigned int status;
 unsigned int tmp;

 spin_lock(&player->irq_lock);
 if (!player->substream)
  goto irq_spin_unlock;

 snd_pcm_stream_lock(player->substream);
 if (player->state == UNIPERIF_STATE_STOPPED)
  goto stream_unlock;


 status = GET_UNIPERIF_ITS(player);
 SET_UNIPERIF_ITS_BCLR(player, status);


 if (unlikely(status & UNIPERIF_ITS_FIFO_ERROR_MASK(player))) {
  dev_err(player->dev, "FIFO underflow error detected\n");


  if (player->underflow_enabled) {

   player->state = UNIPERIF_STATE_UNDERFLOW;

  } else {

   SET_UNIPERIF_ITM_BCLR_FIFO_ERROR(player);


   snd_pcm_stop_xrun(player->substream);
  }

  ret = IRQ_HANDLED;
 }


 if (unlikely(status & UNIPERIF_ITS_DMA_ERROR_MASK(player))) {
  dev_err(player->dev, "DMA error detected\n");


  SET_UNIPERIF_ITM_BCLR_DMA_ERROR(player);


  snd_pcm_stop_xrun(player->substream);

  ret = IRQ_HANDLED;
 }


 if (unlikely(status & UNIPERIF_ITM_UNDERFLOW_REC_DONE_MASK(player))) {
  if (!player->underflow_enabled) {
   dev_err(player->dev,
    "unexpected Underflow recovering\n");
   ret = -EPERM;
   goto stream_unlock;
  }

  tmp = GET_UNIPERIF_STATUS_1_UNDERFLOW_DURATION(player);
  dev_dbg(player->dev, "Underflow recovered (%d LR clocks max)\n",
   tmp);


  SET_UNIPERIF_BIT_CONTROL_CLR_UNDERFLOW_DURATION(player);


  player->state = UNIPERIF_STATE_STARTED;

  ret = IRQ_HANDLED;
 }


 if (unlikely(status &
       UNIPERIF_ITM_UNDERFLOW_REC_FAILED_MASK(player))) {
  dev_err(player->dev, "Underflow recovery failed\n");


  snd_pcm_stop_xrun(player->substream);

  ret = IRQ_HANDLED;
 }

stream_unlock:
 snd_pcm_stream_unlock(player->substream);
irq_spin_unlock:
 spin_unlock(&player->irq_lock);

 return ret;
}
