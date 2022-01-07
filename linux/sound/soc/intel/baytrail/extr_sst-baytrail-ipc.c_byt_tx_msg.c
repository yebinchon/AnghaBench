
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_generic_ipc {int dsp; } ;
struct TYPE_2__ {int header; int size; int data; } ;
struct ipc_message {TYPE_1__ tx; } ;


 int IPC_HEADER_LARGE (int) ;
 int SST_IPCX ;
 int sst_dsp_outbox_write (int ,int ,int ) ;
 int sst_dsp_shim_write64_unlocked (int ,int ,int) ;

__attribute__((used)) static void byt_tx_msg(struct sst_generic_ipc *ipc, struct ipc_message *msg)
{
 if (msg->tx.header & IPC_HEADER_LARGE(1))
  sst_dsp_outbox_write(ipc->dsp, msg->tx.data, msg->tx.size);

 sst_dsp_shim_write64_unlocked(ipc->dsp, SST_IPCX, msg->tx.header);
}
