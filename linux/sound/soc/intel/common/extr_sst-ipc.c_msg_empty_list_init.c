
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sst_generic_ipc {TYPE_3__* msg; int empty_list; int rx_data_max_size; int tx_data_max_size; } ;
struct ipc_message {int dummy; } ;
struct TYPE_6__ {TYPE_3__* data; } ;
struct TYPE_5__ {TYPE_3__* data; } ;
struct TYPE_7__ {TYPE_2__ rx; TYPE_1__ tx; int list; int waitq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IPC_EMPTY_LIST_SIZE ;
 int init_waitqueue_head (int *) ;
 TYPE_3__* kcalloc (int,int,int ) ;
 int kfree (TYPE_3__*) ;
 void* kzalloc (int ,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static int msg_empty_list_init(struct sst_generic_ipc *ipc)
{
 int i;

 ipc->msg = kcalloc(IPC_EMPTY_LIST_SIZE, sizeof(struct ipc_message),
      GFP_KERNEL);
 if (ipc->msg == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < IPC_EMPTY_LIST_SIZE; i++) {
  ipc->msg[i].tx.data = kzalloc(ipc->tx_data_max_size, GFP_KERNEL);
  if (ipc->msg[i].tx.data == ((void*)0))
   goto free_mem;

  ipc->msg[i].rx.data = kzalloc(ipc->rx_data_max_size, GFP_KERNEL);
  if (ipc->msg[i].rx.data == ((void*)0)) {
   kfree(ipc->msg[i].tx.data);
   goto free_mem;
  }

  init_waitqueue_head(&ipc->msg[i].waitq);
  list_add(&ipc->msg[i].list, &ipc->empty_list);
 }

 return 0;

free_mem:
 while (i > 0) {
  kfree(ipc->msg[i-1].tx.data);
  kfree(ipc->msg[i-1].rx.data);
  --i;
 }
 kfree(ipc->msg);

 return -ENOMEM;
}
