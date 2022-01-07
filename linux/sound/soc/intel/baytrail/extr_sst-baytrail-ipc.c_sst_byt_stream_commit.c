
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_ipc_message {int size; int * data; int header; int member_0; } ;
struct sst_byt_stream {int commited; int reply; int request; int str_id; } ;
struct sst_byt {int dev; int ipc; } ;


 int IPC_IA_ALLOC_STREAM ;
 int dev_err (int ,char*) ;
 int sst_byt_header (int ,int,int,int ) ;
 int sst_ipc_tx_message_wait (int *,struct sst_ipc_message,struct sst_ipc_message*) ;

int sst_byt_stream_commit(struct sst_byt *byt, struct sst_byt_stream *stream)
{
 struct sst_ipc_message request, reply = {0};
 int ret;

 request.header = sst_byt_header(IPC_IA_ALLOC_STREAM,
    sizeof(stream->request) + sizeof(u32),
    1, stream->str_id);
 request.data = &stream->request;
 request.size = sizeof(stream->request);
 reply.data = &stream->reply;
 reply.size = sizeof(stream->reply);

 ret = sst_ipc_tx_message_wait(&byt->ipc, request, &reply);
 if (ret < 0) {
  dev_err(byt->dev, "ipc: error stream commit failed\n");
  return ret;
 }

 stream->commited = 1;

 return 0;
}
