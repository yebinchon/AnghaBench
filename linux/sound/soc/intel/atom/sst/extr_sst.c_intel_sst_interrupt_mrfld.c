
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int busy_interrupt; } ;
union sst_imr_reg_mrfld {void* full; TYPE_2__ part; } ;
struct TYPE_11__ {int msg_id; scalar_t__ large; scalar_t__ done; } ;
struct TYPE_12__ {TYPE_4__ part; } ;
struct TYPE_13__ {unsigned int header_low_payload; TYPE_5__ header_high; } ;
union ipc_header_mrfld {TYPE_6__ p; void* full; } ;
struct TYPE_8__ {int done_interrupt; scalar_t__ busy_interrupt; } ;
union interrupt_reg_mrfld {TYPE_1__ part; void* full; } ;
struct ipc_post {int node; int is_process_reply; union ipc_header_mrfld mrfld_header; int mailbox_data; } ;
struct TYPE_10__ {int ipcd; int ipcx; } ;
struct intel_sst_drv {TYPE_7__* ops; int rx_msg_lock; int rx_list; int dev; scalar_t__ mailbox_recv_offset; scalar_t__ mailbox; TYPE_3__ ipc_reg; int shim; int ipc_spin_lock; int ipc_post_msg_wq; int post_msg_wq; } ;
typedef int irqreturn_t ;
struct TYPE_14__ {int (* clear_interrupt ) (struct intel_sst_drv*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int SST_IMRX ;
 int SST_ISRX ;
 int dev_err (int ,char*,unsigned int) ;
 int list_add_tail (int *,int *) ;
 int memcpy_fromio (int ,scalar_t__,unsigned int) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ sst_create_ipc_msg (struct ipc_post**,scalar_t__) ;
 int sst_is_process_reply (int ) ;
 void* sst_shim_read64 (int ,int ) ;
 int sst_shim_write64 (int ,int ,void*) ;
 scalar_t__ sst_validate_mailbox_size (unsigned int) ;
 int stub1 (struct intel_sst_drv*) ;
 int stub2 (struct intel_sst_drv*) ;

__attribute__((used)) static irqreturn_t intel_sst_interrupt_mrfld(int irq, void *context)
{
 union interrupt_reg_mrfld isr;
 union ipc_header_mrfld header;
 union sst_imr_reg_mrfld imr;
 struct ipc_post *msg = ((void*)0);
 unsigned int size = 0;
 struct intel_sst_drv *drv = (struct intel_sst_drv *) context;
 irqreturn_t retval = IRQ_HANDLED;


 isr.full = sst_shim_read64(drv->shim, SST_ISRX);

 if (isr.part.done_interrupt) {

  spin_lock(&drv->ipc_spin_lock);
  header.full = sst_shim_read64(drv->shim,
     drv->ipc_reg.ipcx);
  header.p.header_high.part.done = 0;
  sst_shim_write64(drv->shim, drv->ipc_reg.ipcx, header.full);

                                        ;
  isr.part.done_interrupt = 1;
  sst_shim_write64(drv->shim, SST_ISRX, isr.full);
  spin_unlock(&drv->ipc_spin_lock);


  queue_work(drv->post_msg_wq, &drv->ipc_post_msg_wq);
  retval = IRQ_HANDLED;
 }

 if (isr.part.busy_interrupt) {

  spin_lock(&drv->ipc_spin_lock);
  imr.full = sst_shim_read64(drv->shim, SST_IMRX);
  imr.part.busy_interrupt = 1;
  sst_shim_write64(drv->shim, SST_IMRX, imr.full);
  spin_unlock(&drv->ipc_spin_lock);
  header.full = sst_shim_read64(drv->shim, drv->ipc_reg.ipcd);

  if (sst_create_ipc_msg(&msg, header.p.header_high.part.large)) {
   drv->ops->clear_interrupt(drv);
   return IRQ_HANDLED;
  }

  if (header.p.header_high.part.large) {
   size = header.p.header_low_payload;
   if (sst_validate_mailbox_size(size)) {
    memcpy_fromio(msg->mailbox_data,
     drv->mailbox + drv->mailbox_recv_offset, size);
   } else {
    dev_err(drv->dev,
     "Mailbox not copied, payload size is: %u\n", size);
    header.p.header_low_payload = 0;
   }
  }

  msg->mrfld_header = header;
  msg->is_process_reply =
   sst_is_process_reply(header.p.header_high.part.msg_id);
  spin_lock(&drv->rx_msg_lock);
  list_add_tail(&msg->node, &drv->rx_list);
  spin_unlock(&drv->rx_msg_lock);
  drv->ops->clear_interrupt(drv);
  retval = IRQ_WAKE_THREAD;
 }
 return retval;
}
