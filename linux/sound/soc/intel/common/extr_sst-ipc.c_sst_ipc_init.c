
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_generic_ipc {int kwork; int wait_txq; int empty_list; int rx_list; int tx_list; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int ipc_tx_msgs ;
 int msg_empty_list_init (struct sst_generic_ipc*) ;

int sst_ipc_init(struct sst_generic_ipc *ipc)
{
 int ret;

 INIT_LIST_HEAD(&ipc->tx_list);
 INIT_LIST_HEAD(&ipc->rx_list);
 INIT_LIST_HEAD(&ipc->empty_list);
 init_waitqueue_head(&ipc->wait_txq);

 ret = msg_empty_list_init(ipc);
 if (ret < 0)
  return -ENOMEM;

 INIT_WORK(&ipc->kwork, ipc_tx_msgs);
 return 0;
}
