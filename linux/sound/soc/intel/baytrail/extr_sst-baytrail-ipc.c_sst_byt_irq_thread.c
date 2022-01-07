
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sst_generic_ipc {int kwork; } ;
struct sst_dsp {int spinlock; } ;
struct sst_byt {struct sst_generic_ipc ipc; } ;
typedef int irqreturn_t ;


 int IPC_HEADER_DATA (int ) ;
 int IPC_HEADER_DATA_MASK ;
 int IPC_NOTIFICATION ;
 int IRQ_HANDLED ;
 int SST_BYT_IMRX_REQUEST ;
 int SST_BYT_IPCD_BUSY ;
 int SST_BYT_IPCD_DONE ;
 int SST_IMRX ;
 int SST_IPCD ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sst_byt_process_notification (struct sst_byt*,unsigned long*) ;
 int sst_byt_process_reply (struct sst_byt*,int) ;
 struct sst_byt* sst_dsp_get_thread_context (struct sst_dsp*) ;
 int sst_dsp_shim_read64_unlocked (struct sst_dsp*,int ) ;
 int sst_dsp_shim_update_bits64_unlocked (struct sst_dsp*,int ,int,int) ;

__attribute__((used)) static irqreturn_t sst_byt_irq_thread(int irq, void *context)
{
 struct sst_dsp *sst = (struct sst_dsp *) context;
 struct sst_byt *byt = sst_dsp_get_thread_context(sst);
 struct sst_generic_ipc *ipc = &byt->ipc;
 u64 header;
 unsigned long flags;

 spin_lock_irqsave(&sst->spinlock, flags);

 header = sst_dsp_shim_read64_unlocked(sst, SST_IPCD);
 if (header & SST_BYT_IPCD_BUSY) {
  if (header & IPC_NOTIFICATION) {

   sst_byt_process_notification(byt, &flags);
  } else {

   sst_byt_process_reply(byt, header);
  }





  sst_dsp_shim_update_bits64_unlocked(sst, SST_IPCD,
   SST_BYT_IPCD_DONE | SST_BYT_IPCD_BUSY |
   IPC_HEADER_DATA(IPC_HEADER_DATA_MASK),
   SST_BYT_IPCD_DONE);

  sst_dsp_shim_update_bits64_unlocked(sst, SST_IMRX,
   SST_BYT_IMRX_REQUEST, 0);
 }

 spin_unlock_irqrestore(&sst->spinlock, flags);


 schedule_work(&ipc->kwork);

 return IRQ_HANDLED;
}
