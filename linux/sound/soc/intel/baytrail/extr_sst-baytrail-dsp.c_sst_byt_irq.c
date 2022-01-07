
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sst_dsp {int spinlock; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int SST_BYT_IMRX_REQUEST ;
 int SST_BYT_IPCX_DONE ;
 int SST_BYT_ISRX_REQUEST ;
 int SST_IMRX ;
 int SST_IPCX ;
 int SST_ISRX ;
 int SST_ISRX_DONE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sst_dsp_shim_read64_unlocked (struct sst_dsp*,int ) ;
 int sst_dsp_shim_update_bits64_unlocked (struct sst_dsp*,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t sst_byt_irq(int irq, void *context)
{
 struct sst_dsp *sst = (struct sst_dsp *) context;
 u64 isrx;
 irqreturn_t ret = IRQ_NONE;

 spin_lock(&sst->spinlock);

 isrx = sst_dsp_shim_read64_unlocked(sst, SST_ISRX);
 if (isrx & SST_ISRX_DONE) {

  sst_dsp_shim_update_bits64_unlocked(sst, SST_IPCX,
          SST_BYT_IPCX_DONE, 0);
  ret = IRQ_WAKE_THREAD;
 }
 if (isrx & SST_BYT_ISRX_REQUEST) {

  sst_dsp_shim_update_bits64_unlocked(sst, SST_IMRX,
          SST_BYT_IMRX_REQUEST,
          SST_BYT_IMRX_REQUEST);
  ret = IRQ_WAKE_THREAD;
 }

 spin_unlock(&sst->spinlock);

 return ret;
}
