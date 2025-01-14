
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {int dummy; } ;
struct davinci_mcasp {int* irq_request; int dev; struct snd_pcm_substream** substreams; } ;
typedef int irqreturn_t ;


 int DAVINCI_MCASP_TXSTAT_REG ;
 int IRQ_RETVAL (int) ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int XRERR ;
 int XUNDRN ;
 int dev_warn (int ,char*,...) ;
 int mcasp_get_reg (struct davinci_mcasp*,int ) ;
 int mcasp_set_reg (struct davinci_mcasp*,int ,int) ;
 int snd_pcm_stop_xrun (struct snd_pcm_substream*) ;

__attribute__((used)) static irqreturn_t davinci_mcasp_tx_irq_handler(int irq, void *data)
{
 struct davinci_mcasp *mcasp = (struct davinci_mcasp *)data;
 struct snd_pcm_substream *substream;
 u32 irq_mask = mcasp->irq_request[SNDRV_PCM_STREAM_PLAYBACK];
 u32 handled_mask = 0;
 u32 stat;

 stat = mcasp_get_reg(mcasp, DAVINCI_MCASP_TXSTAT_REG);
 if (stat & XUNDRN & irq_mask) {
  dev_warn(mcasp->dev, "Transmit buffer underflow\n");
  handled_mask |= XUNDRN;

  substream = mcasp->substreams[SNDRV_PCM_STREAM_PLAYBACK];
  if (substream)
   snd_pcm_stop_xrun(substream);
 }

 if (!handled_mask)
  dev_warn(mcasp->dev, "unhandled tx event. txstat: 0x%08x\n",
    stat);

 if (stat & XRERR)
  handled_mask |= XRERR;


 mcasp_set_reg(mcasp, DAVINCI_MCASP_TXSTAT_REG, handled_mask);

 return IRQ_RETVAL(handled_mask);
}
