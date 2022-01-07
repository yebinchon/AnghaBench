
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stream_hw_id; } ;
struct sst_hsw_stream {TYPE_1__ reply; } ;
struct sst_hsw {int dev; } ;


 int IPC_STR_PAUSE ;
 int dev_err (int ,char*,int ) ;
 int dev_warn (int ,char*) ;
 int sst_hsw_stream_operations (struct sst_hsw*,int ,int ,int) ;
 int trace_ipc_request (char*,int ) ;

int sst_hsw_stream_pause(struct sst_hsw *hsw, struct sst_hsw_stream *stream,
 int wait)
{
 int ret;

 if (!stream) {
  dev_warn(hsw->dev, "warning: stream is NULL, no stream to pause, ignore it.\n");
  return 0;
 }

 trace_ipc_request("stream pause", stream->reply.stream_hw_id);

 ret = sst_hsw_stream_operations(hsw, IPC_STR_PAUSE,
  stream->reply.stream_hw_id, wait);
 if (ret < 0)
  dev_err(hsw->dev, "error: failed to pause stream %d\n",
   stream->reply.stream_hw_id);

 return ret;
}
