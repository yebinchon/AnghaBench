
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_generic_ipc {int kwork; } ;
struct sst_hsw {int dsp; struct sst_generic_ipc ipc; } ;
struct sst_dsp {int spinlock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SST_IMRX ;
 int SST_IMRX_BUSY ;
 int SST_IMRX_DONE ;
 int SST_IPCD ;
 int SST_IPCD_BUSY ;
 int SST_IPCD_DONE ;
 int SST_IPCX ;
 int SST_IPCX_DONE ;
 int hsw_process_notification (struct sst_hsw*) ;
 int hsw_process_reply (struct sst_hsw*,int) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sst_hsw* sst_dsp_get_thread_context (struct sst_dsp*) ;
 int sst_dsp_ipc_msg_rx (int ) ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int,int) ;

__attribute__((used)) static irqreturn_t hsw_irq_thread(int irq, void *context)
{
 struct sst_dsp *sst = (struct sst_dsp *) context;
 struct sst_hsw *hsw = sst_dsp_get_thread_context(sst);
 struct sst_generic_ipc *ipc = &hsw->ipc;
 u32 ipcx, ipcd;
 unsigned long flags;

 spin_lock_irqsave(&sst->spinlock, flags);

 ipcx = sst_dsp_ipc_msg_rx(hsw->dsp);
 ipcd = sst_dsp_shim_read_unlocked(sst, SST_IPCD);


 if (ipcx & SST_IPCX_DONE) {


  hsw_process_reply(hsw, ipcx);


  sst_dsp_shim_update_bits_unlocked(sst, SST_IPCX,
   SST_IPCX_DONE, 0);


  sst_dsp_shim_update_bits_unlocked(sst, SST_IMRX,
   SST_IMRX_DONE, 0);
 }


 if (ipcd & SST_IPCD_BUSY) {


  hsw_process_notification(hsw);


  sst_dsp_shim_update_bits_unlocked(sst, SST_IPCD,
   SST_IPCD_BUSY | SST_IPCD_DONE, SST_IPCD_DONE);


  sst_dsp_shim_update_bits_unlocked(sst, SST_IMRX,
   SST_IMRX_BUSY, 0);
 }

 spin_unlock_irqrestore(&sst->spinlock, flags);


 schedule_work(&ipc->kwork);

 return IRQ_HANDLED;
}
