
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stream_hw_id; } ;
struct sst_hsw_stream {TYPE_1__ reply; scalar_t__ running; int commited; } ;
struct sst_hsw {int dev; } ;


 int EINVAL ;
 int IPC_STR_RESET ;
 int dev_err (int ,char*,int ) ;
 int dev_warn (int ,char*) ;
 int msleep (int) ;
 int sst_hsw_stream_operations (struct sst_hsw*,int ,int ,int) ;
 int trace_ipc_request (char*,int ) ;

int sst_hsw_stream_reset(struct sst_hsw *hsw, struct sst_hsw_stream *stream)
{
 int ret, tries = 10;

 if (!stream) {
  dev_warn(hsw->dev, "warning: stream is NULL, no stream to reset, ignore it.\n");
  return 0;
 }


 if (!stream->commited)
  return 0;


 while (stream->running && --tries)
  msleep(1);
 if (!tries) {
  dev_err(hsw->dev, "error: reset stream %d still running\n",
   stream->reply.stream_hw_id);
  return -EINVAL;
 }

 trace_ipc_request("stream reset", stream->reply.stream_hw_id);

 ret = sst_hsw_stream_operations(hsw, IPC_STR_RESET,
  stream->reply.stream_hw_id, 1);
 if (ret < 0)
  dev_err(hsw->dev, "error: failed to reset stream %d\n",
   stream->reply.stream_hw_id);
 return ret;
}
