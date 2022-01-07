
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_dsp {int spinlock; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int SST_IMRX ;
 int SST_IMRX_BUSY ;
 int SST_IMRX_DONE ;
 int SST_ISRX ;
 int SST_ISRX_BUSY ;
 int SST_ISRX_DONE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int ) ;
 int trace_sst_irq_busy (int,int) ;
 int trace_sst_irq_done (int,int) ;

__attribute__((used)) static irqreturn_t hsw_irq(int irq, void *context)
{
 struct sst_dsp *sst = (struct sst_dsp *) context;
 u32 isr;
 int ret = IRQ_NONE;

 spin_lock(&sst->spinlock);


 isr = sst_dsp_shim_read_unlocked(sst, SST_ISRX);
 if (isr & SST_ISRX_DONE) {
  trace_sst_irq_done(isr,
   sst_dsp_shim_read_unlocked(sst, SST_IMRX));


  sst_dsp_shim_update_bits_unlocked(sst, SST_IMRX,
   SST_IMRX_DONE, SST_IMRX_DONE);
  ret = IRQ_WAKE_THREAD;
 }

 if (isr & SST_ISRX_BUSY) {
  trace_sst_irq_busy(isr,
   sst_dsp_shim_read_unlocked(sst, SST_IMRX));


  sst_dsp_shim_update_bits_unlocked(sst, SST_IMRX,
   SST_IMRX_BUSY, SST_IMRX_BUSY);
  ret = IRQ_WAKE_THREAD;
 }

 spin_unlock(&sst->spinlock);
 return ret;
}
