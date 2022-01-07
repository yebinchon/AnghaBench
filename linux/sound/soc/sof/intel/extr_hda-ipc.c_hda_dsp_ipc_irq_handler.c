
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int hw_lock; int dev; } ;
typedef int irqreturn_t ;


 int HDA_DSP_ADSPIC_IPC ;
 int HDA_DSP_ADSPIS_IPC ;
 int HDA_DSP_BAR ;
 int HDA_DSP_REG_ADSPIC ;
 int HDA_DSP_REG_ADSPIS ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int dev_vdbg (int ,char*,int) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;
 int snd_sof_dsp_update_bits_unlocked (struct snd_sof_dev*,int ,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

irqreturn_t hda_dsp_ipc_irq_handler(int irq, void *context)
{
 struct snd_sof_dev *sdev = context;
 int ret = IRQ_NONE;
 u32 irq_status;

 spin_lock(&sdev->hw_lock);


 irq_status = snd_sof_dsp_read(sdev, HDA_DSP_BAR, HDA_DSP_REG_ADSPIS);
 dev_vdbg(sdev->dev, "irq handler: irq_status:0x%x\n", irq_status);


 if (irq_status == 0xffffffff)
  goto out;


 if (irq_status & HDA_DSP_ADSPIS_IPC) {

  snd_sof_dsp_update_bits_unlocked(sdev, HDA_DSP_BAR,
       HDA_DSP_REG_ADSPIC,
       HDA_DSP_ADSPIC_IPC, 0);
  ret = IRQ_WAKE_THREAD;
 }

out:
 spin_unlock(&sdev->hw_lock);
 return ret;
}
