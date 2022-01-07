
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_generic_ipc {int empty_list; } ;
struct ipc_message {int complete; int waitq; int list; int wait; } ;


 int list_add_tail (int *,int *) ;
 int wake_up (int *) ;

void sst_ipc_tx_msg_reply_complete(struct sst_generic_ipc *ipc,
 struct ipc_message *msg)
{
 msg->complete = 1;

 if (!msg->wait)
  list_add_tail(&msg->list, &ipc->empty_list);
 else
  wake_up(&msg->waitq);
}
