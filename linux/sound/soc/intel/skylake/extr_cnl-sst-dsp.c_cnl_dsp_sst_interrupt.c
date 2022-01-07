
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_dsp {int intr_status; int spinlock; } ;
typedef int irqreturn_t ;


 int CNL_ADSPIS_IPC ;
 int CNL_ADSP_REG_ADSPIS ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int cnl_ipc_int_disable (struct sst_dsp*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;

irqreturn_t cnl_dsp_sst_interrupt(int irq, void *dev_id)
{
 struct sst_dsp *ctx = dev_id;
 u32 val;
 irqreturn_t ret = IRQ_NONE;

 spin_lock(&ctx->spinlock);

 val = sst_dsp_shim_read_unlocked(ctx, CNL_ADSP_REG_ADSPIS);
 ctx->intr_status = val;

 if (val == 0xffffffff) {
  spin_unlock(&ctx->spinlock);
  return IRQ_NONE;
 }

 if (val & CNL_ADSPIS_IPC) {
  cnl_ipc_int_disable(ctx);
  ret = IRQ_WAKE_THREAD;
 }

 spin_unlock(&ctx->spinlock);

 return ret;
}
