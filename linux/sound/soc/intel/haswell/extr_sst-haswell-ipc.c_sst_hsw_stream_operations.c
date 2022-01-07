
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_ipc_message {int header; int member_0; } ;
struct sst_hsw {int ipc; } ;


 int IPC_GLB_STREAM_MESSAGE ;
 int IPC_GLB_TYPE (int ) ;
 int IPC_STR_ID_SHIFT ;
 int IPC_STR_TYPE (int) ;
 int sst_ipc_tx_message_nowait (int *,struct sst_ipc_message) ;
 int sst_ipc_tx_message_wait (int *,struct sst_ipc_message,int *) ;

__attribute__((used)) static int sst_hsw_stream_operations(struct sst_hsw *hsw, int type,
 int stream_id, int wait)
{
 struct sst_ipc_message request = {0};

 request.header = IPC_GLB_TYPE(IPC_GLB_STREAM_MESSAGE);
 request.header |= IPC_STR_TYPE(type) | (stream_id << IPC_STR_ID_SHIFT);

 if (wait)
  return sst_ipc_tx_message_wait(&hsw->ipc, request, ((void*)0));
 else
  return sst_ipc_tx_message_nowait(&hsw->ipc, request);
}
