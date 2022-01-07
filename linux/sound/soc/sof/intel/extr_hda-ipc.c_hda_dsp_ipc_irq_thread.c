
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dev; int ipc_lock; int waitq; scalar_t__ code_loading; } ;
typedef int irqreturn_t ;


 int HDA_DSP_ADSPIC_IPC ;
 int HDA_DSP_BAR ;
 int HDA_DSP_PANIC_OFFSET (int) ;
 int HDA_DSP_REG_ADSPIC ;
 int HDA_DSP_REG_HIPCCTL ;
 int HDA_DSP_REG_HIPCCTL_BUSY ;
 int HDA_DSP_REG_HIPCCTL_DONE ;
 int HDA_DSP_REG_HIPCI ;
 int HDA_DSP_REG_HIPCIE ;
 int HDA_DSP_REG_HIPCIE_DONE ;
 int HDA_DSP_REG_HIPCIE_MSG_MASK ;
 int HDA_DSP_REG_HIPCI_MSG_MASK ;
 int HDA_DSP_REG_HIPCT ;
 int HDA_DSP_REG_HIPCTE ;
 int HDA_DSP_REG_HIPCTE_MSG_MASK ;
 int HDA_DSP_REG_HIPCT_BUSY ;
 int HDA_DSP_REG_HIPCT_MSG_MASK ;
 int IRQ_HANDLED ;
 int SOF_IPC_PANIC_MAGIC ;
 int SOF_IPC_PANIC_MAGIC_MASK ;
 int dev_dbg_ratelimited (int ,char*) ;
 int dev_vdbg (int ,char*,int,int) ;
 int hda_dsp_ipc_dsp_done (struct snd_sof_dev*) ;
 int hda_dsp_ipc_get_reply (struct snd_sof_dev*) ;
 int hda_dsp_ipc_host_done (struct snd_sof_dev*) ;
 scalar_t__ hda_dsp_ipc_is_sof (int) ;
 int snd_sof_dsp_panic (struct snd_sof_dev*,int ) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int ,int ,int ) ;
 int snd_sof_ipc_msgs_rx (struct snd_sof_dev*) ;
 int snd_sof_ipc_reply (struct snd_sof_dev*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up (int *) ;

irqreturn_t hda_dsp_ipc_irq_thread(int irq, void *context)
{
 struct snd_sof_dev *sdev = context;
 u32 hipci;
 u32 hipcie;
 u32 hipct;
 u32 hipcte;
 u32 msg;
 u32 msg_ext;
 bool ipc_irq = 0;


 hipcie = snd_sof_dsp_read(sdev, HDA_DSP_BAR,
      HDA_DSP_REG_HIPCIE);
 hipct = snd_sof_dsp_read(sdev, HDA_DSP_BAR, HDA_DSP_REG_HIPCT);
 hipci = snd_sof_dsp_read(sdev, HDA_DSP_BAR, HDA_DSP_REG_HIPCI);
 hipcte = snd_sof_dsp_read(sdev, HDA_DSP_BAR, HDA_DSP_REG_HIPCTE);


 if (hipcie & HDA_DSP_REG_HIPCIE_DONE) {
  msg = hipci & HDA_DSP_REG_HIPCI_MSG_MASK;
  msg_ext = hipcie & HDA_DSP_REG_HIPCIE_MSG_MASK;

  dev_vdbg(sdev->dev,
    "ipc: firmware response, msg:0x%x, msg_ext:0x%x\n",
    msg, msg_ext);


  snd_sof_dsp_update_bits(sdev, HDA_DSP_BAR,
     HDA_DSP_REG_HIPCCTL,
     HDA_DSP_REG_HIPCCTL_DONE, 0);
  spin_lock_irq(&sdev->ipc_lock);


  if (hda_dsp_ipc_is_sof(msg)) {
   hda_dsp_ipc_get_reply(sdev);
   snd_sof_ipc_reply(sdev, msg);
  }


  if (sdev->code_loading) {
   sdev->code_loading = 0;
   wake_up(&sdev->waitq);
  }


  hda_dsp_ipc_dsp_done(sdev);

  spin_unlock_irq(&sdev->ipc_lock);

  ipc_irq = 1;
 }


 if (hipct & HDA_DSP_REG_HIPCT_BUSY) {
  msg = hipct & HDA_DSP_REG_HIPCT_MSG_MASK;
  msg_ext = hipcte & HDA_DSP_REG_HIPCTE_MSG_MASK;

  dev_vdbg(sdev->dev,
    "ipc: firmware initiated, msg:0x%x, msg_ext:0x%x\n",
    msg, msg_ext);


  snd_sof_dsp_update_bits(sdev, HDA_DSP_BAR,
     HDA_DSP_REG_HIPCCTL,
     HDA_DSP_REG_HIPCCTL_BUSY, 0);


  if ((hipct & SOF_IPC_PANIC_MAGIC_MASK) == SOF_IPC_PANIC_MAGIC) {

   snd_sof_dsp_panic(sdev, HDA_DSP_PANIC_OFFSET(msg_ext));
  } else {

   snd_sof_ipc_msgs_rx(sdev);
  }

  hda_dsp_ipc_host_done(sdev);

  ipc_irq = 1;
 }

 if (!ipc_irq) {



  dev_dbg_ratelimited(sdev->dev,
        "nothing to do in IPC IRQ thread\n");
 }


 snd_sof_dsp_update_bits(sdev, HDA_DSP_BAR, HDA_DSP_REG_ADSPIC,
    HDA_DSP_ADSPIC_IPC, HDA_DSP_ADSPIC_IPC);

 return IRQ_HANDLED;
}
