
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct sst_ipc_message {int size; void* data; int header; } ;
struct sst_generic_ipc {int dev; } ;
struct skl_ipc_header {int primary; int member_0; } ;


 int IPC_FW_GEN_MSG ;
 int IPC_GLB_TYPE (int ) ;
 int IPC_GLB_UNLOAD_MULTIPLE_MODS ;
 int IPC_LOAD_MODULE_CNT (int) ;
 int IPC_MSG_DIR (int ) ;
 int IPC_MSG_REQUEST ;
 int IPC_MSG_TARGET (int ) ;
 int dev_err (int ,char*,int) ;
 int sst_ipc_tx_message_wait (struct sst_generic_ipc*,struct sst_ipc_message,int *) ;

int skl_ipc_unload_modules(struct sst_generic_ipc *ipc, u8 module_cnt,
       void *data)
{
 struct skl_ipc_header header = {0};
 struct sst_ipc_message request;
 int ret;

 header.primary = IPC_MSG_TARGET(IPC_FW_GEN_MSG);
 header.primary |= IPC_MSG_DIR(IPC_MSG_REQUEST);
 header.primary |= IPC_GLB_TYPE(IPC_GLB_UNLOAD_MULTIPLE_MODS);
 header.primary |= IPC_LOAD_MODULE_CNT(module_cnt);

 request.header = *(u64 *)(&header);
 request.data = data;
 request.size = sizeof(u16) * module_cnt;

 ret = sst_ipc_tx_message_wait(ipc, request, ((void*)0));
 if (ret < 0)
  dev_err(ipc->dev, "ipc: unload modules failed :%d\n", ret);

 return ret;
}
