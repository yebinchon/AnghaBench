
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct sst_ipc_message {int header; int member_0; } ;
struct sst_generic_ipc {int dev; } ;
struct skl_ipc_header {int primary; int member_0; } ;


 int IPC_FW_GEN_MSG ;
 int IPC_GLB_LOAD_LIBRARY ;
 int IPC_GLB_TYPE (int ) ;
 int IPC_MOD_ID (int ) ;
 int IPC_MOD_INSTANCE_ID (int ) ;
 int IPC_MSG_DIR (int ) ;
 int IPC_MSG_REQUEST ;
 int IPC_MSG_TARGET (int ) ;
 int dev_err (int ,char*) ;
 int sst_ipc_tx_message_nowait (struct sst_generic_ipc*,struct sst_ipc_message) ;
 int sst_ipc_tx_message_wait (struct sst_generic_ipc*,struct sst_ipc_message,int *) ;

int skl_sst_ipc_load_library(struct sst_generic_ipc *ipc,
    u8 dma_id, u8 table_id, bool wait)
{
 struct skl_ipc_header header = {0};
 struct sst_ipc_message request = {0};
 int ret = 0;

 header.primary = IPC_MSG_TARGET(IPC_FW_GEN_MSG);
 header.primary |= IPC_MSG_DIR(IPC_MSG_REQUEST);
 header.primary |= IPC_GLB_TYPE(IPC_GLB_LOAD_LIBRARY);
 header.primary |= IPC_MOD_INSTANCE_ID(table_id);
 header.primary |= IPC_MOD_ID(dma_id);
 request.header = *(u64 *)(&header);

 if (wait)
  ret = sst_ipc_tx_message_wait(ipc, request, ((void*)0));
 else
  ret = sst_ipc_tx_message_nowait(ipc, request);

 if (ret < 0)
  dev_err(ipc->dev, "ipc: load lib failed\n");

 return ret;
}
