
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sst_ipc_message {int size; TYPE_2__* data; int header; } ;
struct TYPE_4__ {int stream_id; } ;
struct TYPE_3__ {int stream_hw_id; } ;
struct sst_hsw_stream {int node; int notify_work; TYPE_2__ free_req; TYPE_1__ reply; int host_id; int commited; } ;
struct sst_hsw {int dev; int ipc; struct sst_dsp* dsp; } ;
struct sst_dsp {int spinlock; } ;


 int EAGAIN ;
 int IPC_GLB_FREE_STREAM ;
 int IPC_GLB_TYPE (int ) ;
 int cancel_work_sync (int *) ;
 int dev_err (int ,char*,int ) ;
 int dev_warn (int ,char*) ;
 int kfree (struct sst_hsw_stream*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sst_ipc_tx_message_wait (int *,struct sst_ipc_message,int *) ;
 int trace_hsw_stream_free_req (struct sst_hsw_stream*,TYPE_2__*) ;
 int trace_ipc_request (char*,int ) ;

int sst_hsw_stream_free(struct sst_hsw *hsw, struct sst_hsw_stream *stream)
{
 struct sst_ipc_message request;
 int ret = 0;
 struct sst_dsp *sst = hsw->dsp;
 unsigned long flags;

 if (!stream) {
  dev_warn(hsw->dev, "warning: stream is NULL, no stream to free, ignore it.\n");
  return 0;
 }


 if (!stream->commited)
  goto out;

 trace_ipc_request("stream free", stream->host_id);

 stream->free_req.stream_id = stream->reply.stream_hw_id;
 request.header = IPC_GLB_TYPE(IPC_GLB_FREE_STREAM);
 request.data = &stream->free_req;
 request.size = sizeof(stream->free_req);

 ret = sst_ipc_tx_message_wait(&hsw->ipc, request, ((void*)0));
 if (ret < 0) {
  dev_err(hsw->dev, "error: free stream %d failed\n",
   stream->free_req.stream_id);
  return -EAGAIN;
 }

 trace_hsw_stream_free_req(stream, &stream->free_req);

out:
 cancel_work_sync(&stream->notify_work);
 spin_lock_irqsave(&sst->spinlock, flags);
 list_del(&stream->node);
 kfree(stream);
 spin_unlock_irqrestore(&sst->spinlock, flags);

 return ret;
}
