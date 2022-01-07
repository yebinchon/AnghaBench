
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_ipc_message {int size; struct sst_hsw_ipc_fw_version* data; int header; int member_0; } ;
struct sst_hsw_ipc_fw_version {int dummy; } ;
struct sst_hsw {int dev; int ipc; } ;


 int IPC_GLB_GET_FW_VERSION ;
 int IPC_GLB_TYPE (int ) ;
 int dev_err (int ,char*) ;
 int sst_ipc_tx_message_wait (int *,struct sst_ipc_message,struct sst_ipc_message*) ;

int sst_hsw_fw_get_version(struct sst_hsw *hsw,
 struct sst_hsw_ipc_fw_version *version)
{
 struct sst_ipc_message request = {0}, reply = {0};
 int ret;

 request.header = IPC_GLB_TYPE(IPC_GLB_GET_FW_VERSION);
 reply.data = version;
 reply.size = sizeof(*version);
 ret = sst_ipc_tx_message_wait(&hsw->ipc, request, &reply);
 if (ret < 0)
  dev_err(hsw->dev, "error: get version failed\n");

 return ret;
}
