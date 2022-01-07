
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_ipc_message {int size; struct sst_byt_start_stream_params* data; int header; } ;
struct sst_byt_stream {int str_id; } ;
struct sst_byt_start_stream_params {int byte_offset; } ;
struct sst_byt {int dev; int ipc; } ;
typedef int start_stream ;


 int IPC_IA_START_STREAM ;
 int dev_err (int ,char*,int ) ;
 int sst_byt_header (int ,int,int,int ) ;
 int sst_ipc_tx_message_nowait (int *,struct sst_ipc_message) ;

int sst_byt_stream_start(struct sst_byt *byt, struct sst_byt_stream *stream,
    u32 start_offset)
{
 struct sst_byt_start_stream_params start_stream;
 struct sst_ipc_message request;
 int ret;

 start_stream.byte_offset = start_offset;
 request.header = sst_byt_header(IPC_IA_START_STREAM,
    sizeof(start_stream) + sizeof(u32),
    1, stream->str_id);
 request.data = &start_stream;
 request.size = sizeof(start_stream);

 ret = sst_ipc_tx_message_nowait(&byt->ipc, request);
 if (ret < 0)
  dev_err(byt->dev, "ipc: error failed to start stream %d\n",
   stream->str_id);

 return ret;
}
