
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_generic_ipc {int dsp; } ;
struct TYPE_2__ {int header; int size; int data; } ;
struct ipc_message {TYPE_1__ tx; } ;


 int sst_dsp_ipc_msg_tx (int ,int ) ;
 int sst_dsp_outbox_write (int ,int ,int ) ;

__attribute__((used)) static void hsw_tx_msg(struct sst_generic_ipc *ipc, struct ipc_message *msg)
{

 sst_dsp_outbox_write(ipc->dsp, msg->tx.data, msg->tx.size);
 sst_dsp_ipc_msg_tx(ipc->dsp, msg->tx.header);
}
