
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_generic_ipc {int dsp; } ;
struct skl_ipc_header {int extension; int primary; } ;
struct TYPE_2__ {scalar_t__ size; int data; int header; } ;
struct ipc_message {TYPE_1__ tx; } ;


 int CNL_ADSP_REG_HIPCIDD ;
 int CNL_ADSP_REG_HIPCIDR ;
 int CNL_ADSP_REG_HIPCIDR_BUSY ;
 int sst_dsp_outbox_write (int ,int ,scalar_t__) ;
 int sst_dsp_shim_write_unlocked (int ,int ,int) ;

__attribute__((used)) static void cnl_ipc_tx_msg(struct sst_generic_ipc *ipc, struct ipc_message *msg)
{
 struct skl_ipc_header *header = (struct skl_ipc_header *)(&msg->tx.header);

 if (msg->tx.size)
  sst_dsp_outbox_write(ipc->dsp, msg->tx.data, msg->tx.size);
 sst_dsp_shim_write_unlocked(ipc->dsp, CNL_ADSP_REG_HIPCIDD,
        header->extension);
 sst_dsp_shim_write_unlocked(ipc->dsp, CNL_ADSP_REG_HIPCIDR,
    header->primary | CNL_ADSP_REG_HIPCIDR_BUSY);
}
