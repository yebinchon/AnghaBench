
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_ipc_message {int size; int * data; int header; int member_0; } ;
struct sst_hsw {int mixer_info; int dev; int ipc; } ;


 int IPC_GLB_GET_MIXER_STREAM_INFO ;
 int IPC_GLB_TYPE (int ) ;
 int dev_err (int ,char*) ;
 int sst_ipc_tx_message_wait (int *,struct sst_ipc_message,struct sst_ipc_message*) ;
 int trace_hsw_mixer_info_reply (int *) ;
 int trace_ipc_request (char*,int ) ;

int sst_hsw_mixer_get_info(struct sst_hsw *hsw)
{
 struct sst_ipc_message request = {0}, reply = {0};
 int ret;

 request.header = IPC_GLB_TYPE(IPC_GLB_GET_MIXER_STREAM_INFO);
 reply.data = &hsw->mixer_info;
 reply.size = sizeof(hsw->mixer_info);

 trace_ipc_request("get global mixer info", 0);

 ret = sst_ipc_tx_message_wait(&hsw->ipc, request, &reply);
 if (ret < 0) {
  dev_err(hsw->dev, "error: get stream info failed\n");
  return ret;
 }

 trace_hsw_mixer_info_reply(&hsw->mixer_info);

 return 0;
}
