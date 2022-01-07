
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniperif {scalar_t__ state; int irq_lock; int substream; int dev; } ;
typedef int irqreturn_t ;


 unsigned int GET_UNIPERIF_ITS (struct uniperif*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SET_UNIPERIF_ITS_BCLR (struct uniperif*,unsigned int) ;
 unsigned int UNIPERIF_ITS_FIFO_ERROR_MASK (struct uniperif*) ;
 scalar_t__ UNIPERIF_STATE_STOPPED ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int snd_pcm_stop_xrun (int ) ;
 int snd_pcm_stream_lock (int ) ;
 int snd_pcm_stream_unlock (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static irqreturn_t uni_reader_irq_handler(int irq, void *dev_id)
{
 irqreturn_t ret = IRQ_NONE;
 struct uniperif *reader = dev_id;
 unsigned int status;

 spin_lock(&reader->irq_lock);
 if (!reader->substream)
  goto irq_spin_unlock;

 snd_pcm_stream_lock(reader->substream);
 if (reader->state == UNIPERIF_STATE_STOPPED) {

  dev_warn(reader->dev, "unexpected IRQ\n");
  goto stream_unlock;
 }


 status = GET_UNIPERIF_ITS(reader);
 SET_UNIPERIF_ITS_BCLR(reader, status);


 if (unlikely(status & UNIPERIF_ITS_FIFO_ERROR_MASK(reader))) {
  dev_err(reader->dev, "FIFO error detected\n");

  snd_pcm_stop_xrun(reader->substream);

  ret = IRQ_HANDLED;
 }

stream_unlock:
 snd_pcm_stream_unlock(reader->substream);
irq_spin_unlock:
 spin_unlock(&reader->irq_lock);

 return ret;
}
