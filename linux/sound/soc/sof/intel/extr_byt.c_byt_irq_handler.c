
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct snd_sof_dev {int dummy; } ;
typedef int irqreturn_t ;


 int BYT_DSP_BAR ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int SHIM_ISRX ;
 int SHIM_ISRX_BUSY ;
 int SHIM_ISRX_DONE ;
 int snd_sof_dsp_read64 (struct snd_sof_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t byt_irq_handler(int irq, void *context)
{
 struct snd_sof_dev *sdev = context;
 u64 isr;
 int ret = IRQ_NONE;


 isr = snd_sof_dsp_read64(sdev, BYT_DSP_BAR, SHIM_ISRX);
 if (isr & (SHIM_ISRX_DONE | SHIM_ISRX_BUSY))
  ret = IRQ_WAKE_THREAD;

 return ret;
}
