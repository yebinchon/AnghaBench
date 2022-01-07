
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_ipc_message {int dummy; } ;
struct sst_generic_ipc {int dummy; } ;


 int ipc_tx_message (struct sst_generic_ipc*,struct sst_ipc_message,struct sst_ipc_message*,int) ;

int sst_ipc_tx_message_nopm(struct sst_generic_ipc *ipc,
 struct sst_ipc_message request, struct sst_ipc_message *reply)
{
 return ipc_tx_message(ipc, request, reply, 1);
}
