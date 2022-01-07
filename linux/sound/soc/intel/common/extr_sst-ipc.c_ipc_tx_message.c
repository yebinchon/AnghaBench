
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sst_ipc_message {scalar_t__ size; int data; int header; } ;
struct TYPE_7__ {int (* tx_data_copy ) (struct ipc_message*,int ,scalar_t__) ;} ;
struct sst_generic_ipc {TYPE_4__* dsp; int kwork; int tx_list; TYPE_3__ ops; } ;
struct TYPE_6__ {scalar_t__ size; scalar_t__ header; } ;
struct TYPE_5__ {scalar_t__ size; int header; } ;
struct ipc_message {int wait; int pending; int complete; int list; scalar_t__ errno; TYPE_2__ rx; TYPE_1__ tx; } ;
struct TYPE_8__ {int spinlock; } ;


 int EBUSY ;
 int list_add_tail (int *,int *) ;
 struct ipc_message* msg_get_empty (struct sst_generic_ipc*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ipc_message*,int ,scalar_t__) ;
 int tx_wait_done (struct sst_generic_ipc*,struct ipc_message*,struct sst_ipc_message*) ;

__attribute__((used)) static int ipc_tx_message(struct sst_generic_ipc *ipc,
 struct sst_ipc_message request,
 struct sst_ipc_message *reply, int wait)
{
 struct ipc_message *msg;
 unsigned long flags;

 spin_lock_irqsave(&ipc->dsp->spinlock, flags);

 msg = msg_get_empty(ipc);
 if (msg == ((void*)0)) {
  spin_unlock_irqrestore(&ipc->dsp->spinlock, flags);
  return -EBUSY;
 }

 msg->tx.header = request.header;
 msg->tx.size = request.size;
 msg->rx.header = 0;
 msg->rx.size = reply ? reply->size : 0;
 msg->wait = wait;
 msg->errno = 0;
 msg->pending = 0;
 msg->complete = 0;

 if ((request.size) && (ipc->ops.tx_data_copy != ((void*)0)))
  ipc->ops.tx_data_copy(msg, request.data, request.size);

 list_add_tail(&msg->list, &ipc->tx_list);
 schedule_work(&ipc->kwork);
 spin_unlock_irqrestore(&ipc->dsp->spinlock, flags);

 if (wait)
  return tx_wait_done(ipc, msg, reply);
 else
  return 0;
}
