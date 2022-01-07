
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


 int CNL_ADSPIS_IPC ;
 int CNL_ADSP_REG_HIPCCTL ;
 int CNL_ADSP_REG_HIPCCTL_DONE ;
 int CNL_ADSP_REG_HIPCIDA ;
 int CNL_ADSP_REG_HIPCIDA_DONE ;
 int CNL_ADSP_REG_HIPCTDA ;
 int CNL_ADSP_REG_HIPCTDA_DONE ;
 int CNL_ADSP_REG_HIPCTDD ;
 int CNL_ADSP_REG_HIPCTDR ;
 int CNL_ADSP_REG_HIPCTDR_BUSY ;
 scalar_t__ CNL_IPC_GLB_NOTIFY_RSP_TYPE (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int cnl_ipc_int_enable (struct sst_dsp*) ;
 int dev_dbg (int ,char*,...) ;
 int schedule_work (int *) ;
 int skl_ipc_process_notification (struct sst_generic_ipc*,struct skl_ipc_header) ;
 int skl_ipc_process_reply (struct sst_generic_ipc*,struct skl_ipc_header) ;
 struct skl_dev* sst_dsp_get_thread_context (struct sst_dsp*) ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;
 int sst_dsp_shim_update_bits (struct sst_dsp*,int ,int ,int ) ;
 int sst_dsp_shim_update_bits_forced (struct sst_dsp*,int ,int,int) ;

__attribute__((used)) static irqreturn_t cnl_dsp_irq_thread_handler(int irq, void *context)
{
 struct sst_dsp *dsp = context;
 struct skl_dev *cnl = sst_dsp_get_thread_context(dsp);
 struct sst_generic_ipc *ipc = &cnl->ipc;
 struct skl_ipc_header header = {0};
 u32 hipcida, hipctdr, hipctdd;
 int ipc_irq = 0;


 if (!(dsp->intr_status & CNL_ADSPIS_IPC))
  return IRQ_NONE;

 hipcida = sst_dsp_shim_read_unlocked(dsp, CNL_ADSP_REG_HIPCIDA);
 hipctdr = sst_dsp_shim_read_unlocked(dsp, CNL_ADSP_REG_HIPCTDR);
 hipctdd = sst_dsp_shim_read_unlocked(dsp, CNL_ADSP_REG_HIPCTDD);


 if (hipcida & CNL_ADSP_REG_HIPCIDA_DONE) {
  sst_dsp_shim_update_bits(dsp, CNL_ADSP_REG_HIPCCTL,
   CNL_ADSP_REG_HIPCCTL_DONE, 0);


  sst_dsp_shim_update_bits_forced(dsp, CNL_ADSP_REG_HIPCIDA,
   CNL_ADSP_REG_HIPCIDA_DONE, CNL_ADSP_REG_HIPCIDA_DONE);

  ipc_irq = 1;


  sst_dsp_shim_update_bits(dsp, CNL_ADSP_REG_HIPCCTL,
   CNL_ADSP_REG_HIPCCTL_DONE, CNL_ADSP_REG_HIPCCTL_DONE);
 }


 if (hipctdr & CNL_ADSP_REG_HIPCTDR_BUSY) {
  header.primary = hipctdr;
  header.extension = hipctdd;
  dev_dbg(dsp->dev, "IPC irq: Firmware respond primary:%x",
      header.primary);
  dev_dbg(dsp->dev, "IPC irq: Firmware respond extension:%x",
      header.extension);

  if (CNL_IPC_GLB_NOTIFY_RSP_TYPE(header.primary)) {

   skl_ipc_process_reply(ipc, header);
  } else {
   dev_dbg(dsp->dev, "IPC irq: Notification from firmware\n");
   skl_ipc_process_notification(ipc, header);
  }

  sst_dsp_shim_update_bits_forced(dsp, CNL_ADSP_REG_HIPCTDR,
   CNL_ADSP_REG_HIPCTDR_BUSY, CNL_ADSP_REG_HIPCTDR_BUSY);


  sst_dsp_shim_update_bits_forced(dsp, CNL_ADSP_REG_HIPCTDA,
   CNL_ADSP_REG_HIPCTDA_DONE, CNL_ADSP_REG_HIPCTDA_DONE);
  ipc_irq = 1;
 }

 if (ipc_irq == 0)
  return IRQ_NONE;

 cnl_ipc_int_enable(dsp);


 schedule_work(&ipc->kwork);

 return IRQ_HANDLED;
}
