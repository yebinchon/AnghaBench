
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_generic_ipc {int kwork; } ;
struct sst_dsp {int intr_status; int dev; } ;
struct skl_ipc_header {int primary; int extension; int member_0; } ;
struct skl_dev {struct sst_generic_ipc ipc; } ;
typedef int irqreturn_t ;


 scalar_t__ IPC_GLB_NOTIFY_RSP_TYPE (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SKL_ADSPIS_CL_DMA ;
 int SKL_ADSPIS_IPC ;
 int SKL_ADSP_REG_HIPCCTL ;
 int SKL_ADSP_REG_HIPCCTL_DONE ;
 int SKL_ADSP_REG_HIPCIE ;
 int SKL_ADSP_REG_HIPCIE_DONE ;
 int SKL_ADSP_REG_HIPCT ;
 int SKL_ADSP_REG_HIPCTE ;
 int SKL_ADSP_REG_HIPCT_BUSY ;
 int dev_dbg (int ,char*,...) ;
 int schedule_work (int *) ;
 int skl_cldma_process_intr (struct sst_dsp*) ;
 int skl_ipc_int_enable (struct sst_dsp*) ;
 int skl_ipc_process_notification (struct sst_generic_ipc*,struct skl_ipc_header) ;
 int skl_ipc_process_reply (struct sst_generic_ipc*,struct skl_ipc_header) ;
 struct skl_dev* sst_dsp_get_thread_context (struct sst_dsp*) ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;
 int sst_dsp_shim_update_bits (struct sst_dsp*,int ,int ,int ) ;
 int sst_dsp_shim_update_bits_forced (struct sst_dsp*,int ,int,int) ;

irqreturn_t skl_dsp_irq_thread_handler(int irq, void *context)
{
 struct sst_dsp *dsp = context;
 struct skl_dev *skl = sst_dsp_get_thread_context(dsp);
 struct sst_generic_ipc *ipc = &skl->ipc;
 struct skl_ipc_header header = {0};
 u32 hipcie, hipct, hipcte;
 int ipc_irq = 0;

 if (dsp->intr_status & SKL_ADSPIS_CL_DMA)
  skl_cldma_process_intr(dsp);


 if (!(dsp->intr_status & SKL_ADSPIS_IPC))
  return IRQ_NONE;

 hipcie = sst_dsp_shim_read_unlocked(dsp, SKL_ADSP_REG_HIPCIE);
 hipct = sst_dsp_shim_read_unlocked(dsp, SKL_ADSP_REG_HIPCT);
 hipcte = sst_dsp_shim_read_unlocked(dsp, SKL_ADSP_REG_HIPCTE);


 if (hipcie & SKL_ADSP_REG_HIPCIE_DONE) {
  sst_dsp_shim_update_bits(dsp, SKL_ADSP_REG_HIPCCTL,
   SKL_ADSP_REG_HIPCCTL_DONE, 0);


  sst_dsp_shim_update_bits_forced(dsp, SKL_ADSP_REG_HIPCIE,
   SKL_ADSP_REG_HIPCIE_DONE, SKL_ADSP_REG_HIPCIE_DONE);

  ipc_irq = 1;


  sst_dsp_shim_update_bits(dsp, SKL_ADSP_REG_HIPCCTL,
   SKL_ADSP_REG_HIPCCTL_DONE, SKL_ADSP_REG_HIPCCTL_DONE);
 }


 if (hipct & SKL_ADSP_REG_HIPCT_BUSY) {
  header.primary = hipct;
  header.extension = hipcte;
  dev_dbg(dsp->dev, "IPC irq: Firmware respond primary:%x\n",
      header.primary);
  dev_dbg(dsp->dev, "IPC irq: Firmware respond extension:%x\n",
      header.extension);

  if (IPC_GLB_NOTIFY_RSP_TYPE(header.primary)) {

   skl_ipc_process_reply(ipc, header);
  } else {
   dev_dbg(dsp->dev, "IPC irq: Notification from firmware\n");
   skl_ipc_process_notification(ipc, header);
  }

  sst_dsp_shim_update_bits_forced(dsp, SKL_ADSP_REG_HIPCT,
   SKL_ADSP_REG_HIPCT_BUSY, SKL_ADSP_REG_HIPCT_BUSY);
  ipc_irq = 1;
 }

 if (ipc_irq == 0)
  return IRQ_NONE;

 skl_ipc_int_enable(dsp);


 schedule_work(&ipc->kwork);

 return IRQ_HANDLED;
}
