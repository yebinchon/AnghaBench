
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sst_ipc_message {scalar_t__ data; int header; } ;
struct TYPE_4__ {int (* shim_dbg ) (struct sst_generic_ipc*,char*) ;} ;
struct sst_generic_ipc {TYPE_3__* dsp; int empty_list; TYPE_1__ ops; } ;
struct TYPE_5__ {int size; int data; int header; } ;
struct ipc_message {int errno; int list; TYPE_2__ rx; int complete; int waitq; } ;
struct TYPE_6__ {int spinlock; } ;


 int ETIMEDOUT ;
 int IPC_TIMEOUT_MSECS ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memcpy (scalar_t__,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sst_generic_ipc*,char*) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int tx_wait_done(struct sst_generic_ipc *ipc,
 struct ipc_message *msg, struct sst_ipc_message *reply)
{
 unsigned long flags;
 int ret;


 ret = wait_event_timeout(msg->waitq, msg->complete,
  msecs_to_jiffies(IPC_TIMEOUT_MSECS));

 spin_lock_irqsave(&ipc->dsp->spinlock, flags);
 if (ret == 0) {
  if (ipc->ops.shim_dbg != ((void*)0))
   ipc->ops.shim_dbg(ipc, "message timeout");

  list_del(&msg->list);
  ret = -ETIMEDOUT;
 } else {


  if (reply) {
   reply->header = msg->rx.header;
   if (reply->data)
    memcpy(reply->data, msg->rx.data, msg->rx.size);
  }
  ret = msg->errno;
 }

 list_add_tail(&msg->list, &ipc->empty_list);
 spin_unlock_irqrestore(&ipc->dsp->spinlock, flags);
 return ret;
}
