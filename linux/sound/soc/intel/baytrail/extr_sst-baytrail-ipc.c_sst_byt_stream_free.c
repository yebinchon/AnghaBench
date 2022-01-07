
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_ipc_message {int header; int member_0; } ;
struct sst_dsp {int spinlock; } ;
struct sst_byt_stream {int commited; int node; int str_id; } ;
struct sst_byt {int dev; int ipc; struct sst_dsp* dsp; } ;


 int EAGAIN ;
 int IPC_IA_FREE_STREAM ;
 int dev_err (int ,char*,int ) ;
 int kfree (struct sst_byt_stream*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sst_byt_header (int ,int ,int,int ) ;
 int sst_ipc_tx_message_wait (int *,struct sst_ipc_message,int *) ;

int sst_byt_stream_free(struct sst_byt *byt, struct sst_byt_stream *stream)
{
 struct sst_ipc_message request = {0};
 int ret = 0;
 struct sst_dsp *sst = byt->dsp;
 unsigned long flags;

 if (!stream->commited)
  goto out;

 request.header = sst_byt_header(IPC_IA_FREE_STREAM,
   0, 0, stream->str_id);
 ret = sst_ipc_tx_message_wait(&byt->ipc, request, ((void*)0));
 if (ret < 0) {
  dev_err(byt->dev, "ipc: free stream %d failed\n",
   stream->str_id);
  return -EAGAIN;
 }

 stream->commited = 0;
out:
 spin_lock_irqsave(&sst->spinlock, flags);
 list_del(&stream->node);
 kfree(stream);
 spin_unlock_irqrestore(&sst->spinlock, flags);

 return ret;
}
