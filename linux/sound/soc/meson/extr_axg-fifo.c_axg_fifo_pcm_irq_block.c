
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct axg_fifo {int map; } ;
typedef int irqreturn_t ;


 unsigned int FIFO_INT_COUNT_REPEAT ;
 unsigned int FIFO_INT_MASK ;
 int FIFO_STATUS1 ;
 int IRQ_RETVAL (unsigned int) ;
 unsigned int STATUS1_INT_STS (unsigned int) ;
 int axg_fifo_ack_irq (struct axg_fifo*,unsigned int) ;
 struct axg_fifo* axg_fifo_data (struct snd_pcm_substream*) ;
 int axg_fifo_dev (struct snd_pcm_substream*) ;
 int dev_dbg (int ,char*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

__attribute__((used)) static irqreturn_t axg_fifo_pcm_irq_block(int irq, void *dev_id)
{
 struct snd_pcm_substream *ss = dev_id;
 struct axg_fifo *fifo = axg_fifo_data(ss);
 unsigned int status;

 regmap_read(fifo->map, FIFO_STATUS1, &status);

 status = STATUS1_INT_STS(status) & FIFO_INT_MASK;
 if (status & FIFO_INT_COUNT_REPEAT)
  snd_pcm_period_elapsed(ss);
 else
  dev_dbg(axg_fifo_dev(ss), "unexpected irq - STS 0x%02x\n",
   status);


 axg_fifo_ack_irq(fifo, status);

 return IRQ_RETVAL(status);
}
