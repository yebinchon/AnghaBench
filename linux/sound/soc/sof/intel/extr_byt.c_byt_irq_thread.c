
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct snd_sof_dev {int ipc_lock; } ;
typedef int irqreturn_t ;


 int BYT_DSP_BAR ;
 scalar_t__ BYT_PANIC_OFFSET (int) ;
 int IRQ_HANDLED ;
 scalar_t__ MBOX_OFFSET ;
 int SHIM_BYT_IPCD_BUSY ;
 int SHIM_BYT_IPCX_DONE ;
 int SHIM_IMRX ;
 int SHIM_IMRX_BUSY ;
 int SHIM_IMRX_DONE ;
 int SHIM_IPCD ;
 int SHIM_IPCX ;
 int SOF_IPC_PANIC_MAGIC ;
 int SOF_IPC_PANIC_MAGIC_MASK ;
 int byt_dsp_done (struct snd_sof_dev*) ;
 int byt_get_reply (struct snd_sof_dev*) ;
 int byt_host_done (struct snd_sof_dev*) ;
 int snd_sof_dsp_panic (struct snd_sof_dev*,scalar_t__) ;
 int snd_sof_dsp_read64 (struct snd_sof_dev*,int ,int ) ;
 int snd_sof_dsp_update_bits64_unlocked (struct snd_sof_dev*,int ,int ,int,int) ;
 int snd_sof_ipc_msgs_rx (struct snd_sof_dev*) ;
 int snd_sof_ipc_reply (struct snd_sof_dev*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static irqreturn_t byt_irq_thread(int irq, void *context)
{
 struct snd_sof_dev *sdev = context;
 u64 ipcx, ipcd;
 u64 imrx;

 imrx = snd_sof_dsp_read64(sdev, BYT_DSP_BAR, SHIM_IMRX);
 ipcx = snd_sof_dsp_read64(sdev, BYT_DSP_BAR, SHIM_IPCX);


 if (ipcx & SHIM_BYT_IPCX_DONE &&
     !(imrx & SHIM_IMRX_DONE)) {

  snd_sof_dsp_update_bits64_unlocked(sdev, BYT_DSP_BAR,
         SHIM_IMRX,
         SHIM_IMRX_DONE,
         SHIM_IMRX_DONE);

  spin_lock_irq(&sdev->ipc_lock);
  byt_get_reply(sdev);
  snd_sof_ipc_reply(sdev, ipcx);

  byt_dsp_done(sdev);

  spin_unlock_irq(&sdev->ipc_lock);
 }


 ipcd = snd_sof_dsp_read64(sdev, BYT_DSP_BAR, SHIM_IPCD);
 if (ipcd & SHIM_BYT_IPCD_BUSY &&
     !(imrx & SHIM_IMRX_BUSY)) {

  snd_sof_dsp_update_bits64_unlocked(sdev, BYT_DSP_BAR,
         SHIM_IMRX,
         SHIM_IMRX_BUSY,
         SHIM_IMRX_BUSY);


  if ((ipcd & SOF_IPC_PANIC_MAGIC_MASK) == SOF_IPC_PANIC_MAGIC) {
   snd_sof_dsp_panic(sdev, BYT_PANIC_OFFSET(ipcd) +
       MBOX_OFFSET);
  } else {
   snd_sof_ipc_msgs_rx(sdev);
  }

  byt_host_done(sdev);
 }

 return IRQ_HANDLED;
}
