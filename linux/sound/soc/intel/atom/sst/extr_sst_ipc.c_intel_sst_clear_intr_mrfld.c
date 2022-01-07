
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int done; scalar_t__ busy; } ;
struct TYPE_6__ {TYPE_1__ part; } ;
struct TYPE_7__ {int header_low_payload; TYPE_2__ header_high; } ;
union ipc_header_mrfld {void* full; TYPE_3__ p; } ;
struct TYPE_8__ {int busy_interrupt; } ;
union interrupt_reg_mrfld {void* full; TYPE_4__ part; } ;
struct intel_sst_drv {int ipc_spin_lock; int shim; } ;


 int IPC_ACK_SUCCESS ;
 int SST_IMRX ;
 int SST_IPCD ;
 int SST_ISRX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void* sst_shim_read64 (int ,int ) ;
 int sst_shim_write64 (int ,int ,void*) ;

void intel_sst_clear_intr_mrfld(struct intel_sst_drv *sst_drv_ctx)
{
 union interrupt_reg_mrfld isr;
 union interrupt_reg_mrfld imr;
 union ipc_header_mrfld clear_ipc;
 unsigned long irq_flags;

 spin_lock_irqsave(&sst_drv_ctx->ipc_spin_lock, irq_flags);
 imr.full = sst_shim_read64(sst_drv_ctx->shim, SST_IMRX);
 isr.full = sst_shim_read64(sst_drv_ctx->shim, SST_ISRX);


 isr.part.busy_interrupt = 1;
 sst_shim_write64(sst_drv_ctx->shim, SST_ISRX, isr.full);


 clear_ipc.full = sst_shim_read64(sst_drv_ctx->shim, SST_IPCD);

 clear_ipc.p.header_high.part.busy = 0;
 clear_ipc.p.header_high.part.done = 1;
 clear_ipc.p.header_low_payload = IPC_ACK_SUCCESS;
 sst_shim_write64(sst_drv_ctx->shim, SST_IPCD, clear_ipc.full);

 imr.part.busy_interrupt = 0;
 sst_shim_write64(sst_drv_ctx->shim, SST_IMRX, imr.full);
 spin_unlock_irqrestore(&sst_drv_ctx->ipc_spin_lock, irq_flags);
}
