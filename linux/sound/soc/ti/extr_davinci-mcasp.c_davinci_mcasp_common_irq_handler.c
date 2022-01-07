
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_mcasp {scalar_t__* substreams; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int davinci_mcasp_rx_irq_handler (int,void*) ;
 int davinci_mcasp_tx_irq_handler (int,void*) ;

__attribute__((used)) static irqreturn_t davinci_mcasp_common_irq_handler(int irq, void *data)
{
 struct davinci_mcasp *mcasp = (struct davinci_mcasp *)data;
 irqreturn_t ret = IRQ_NONE;

 if (mcasp->substreams[SNDRV_PCM_STREAM_PLAYBACK])
  ret = davinci_mcasp_tx_irq_handler(irq, data);

 if (mcasp->substreams[SNDRV_PCM_STREAM_CAPTURE])
  ret |= davinci_mcasp_rx_irq_handler(irq, data);

 return ret;
}
