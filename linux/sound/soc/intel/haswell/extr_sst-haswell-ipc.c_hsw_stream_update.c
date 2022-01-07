
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int stream_hw_id; } ;
struct sst_hsw_stream {int running; TYPE_1__ reply; } ;
struct sst_hsw {int dummy; } ;
struct TYPE_4__ {int header; } ;
struct ipc_message {TYPE_2__ tx; } ;


 int IPC_GLB_REPLY_MASK ;
 int IPC_STATUS_MASK ;





 struct sst_hsw_stream* get_stream_by_id (struct sst_hsw*,int) ;
 int msg_get_stream_id (int) ;
 int msg_get_stream_type (int) ;
 int trace_ipc_notification (char*,int ) ;

__attribute__((used)) static void hsw_stream_update(struct sst_hsw *hsw, struct ipc_message *msg)
{
 struct sst_hsw_stream *stream;
 u32 header = msg->tx.header & ~(IPC_STATUS_MASK | IPC_GLB_REPLY_MASK);
 u32 stream_id = msg_get_stream_id(header);
 u32 stream_msg = msg_get_stream_type(header);

 stream = get_stream_by_id(hsw, stream_id);
 if (stream == ((void*)0))
  return;

 switch (stream_msg) {
 case 128:
 case 132:
  break;
 case 130:
  trace_ipc_notification("stream reset", stream->reply.stream_hw_id);
  break;
 case 131:
  stream->running = 0;
  trace_ipc_notification("stream paused",
   stream->reply.stream_hw_id);
  break;
 case 129:
  stream->running = 1;
  trace_ipc_notification("stream running",
   stream->reply.stream_hw_id);
  break;
 }
}
