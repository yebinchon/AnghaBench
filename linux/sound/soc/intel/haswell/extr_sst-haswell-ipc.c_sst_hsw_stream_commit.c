
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_ipc_message {int size; int * data; int header; int member_0; } ;
struct sst_hsw_stream {int commited; int reply; int request; int host_id; } ;
struct sst_hsw {int dev; int ipc; } ;


 int IPC_GLB_ALLOCATE_STREAM ;
 int IPC_GLB_TYPE (int ) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int sst_ipc_tx_message_wait (int *,struct sst_ipc_message,struct sst_ipc_message*) ;
 int trace_hsw_stream_alloc_reply (struct sst_hsw_stream*) ;
 int trace_ipc_request (char*,int ) ;

int sst_hsw_stream_commit(struct sst_hsw *hsw, struct sst_hsw_stream *stream)
{
 struct sst_ipc_message request, reply = {0};
 int ret;

 if (!stream) {
  dev_warn(hsw->dev, "warning: stream is NULL, no stream to commit, ignore it.\n");
  return 0;
 }

 if (stream->commited) {
  dev_warn(hsw->dev, "warning: stream is already committed, ignore it.\n");
  return 0;
 }

 trace_ipc_request("stream alloc", stream->host_id);

 request.header = IPC_GLB_TYPE(IPC_GLB_ALLOCATE_STREAM);
 request.data = &stream->request;
 request.size = sizeof(stream->request);
 reply.data = &stream->reply;
 reply.size = sizeof(stream->reply);

 ret = sst_ipc_tx_message_wait(&hsw->ipc, request, &reply);
 if (ret < 0) {
  dev_err(hsw->dev, "error: stream commit failed\n");
  return ret;
 }

 stream->commited = 1;
 trace_hsw_stream_alloc_reply(stream);

 return 0;
}
