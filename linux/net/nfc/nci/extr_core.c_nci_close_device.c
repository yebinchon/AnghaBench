
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nci_dev {int req_lock; scalar_t__ flags; int cmd_wq; int cmd_timer; TYPE_1__* ops; int cmd_cnt; int cmd_q; int tx_wq; int rx_wq; int tx_q; int rx_q; int data_timer; } ;
struct TYPE_2__ {int (* close ) (struct nci_dev*) ;} ;


 int ENODEV ;
 int NCI_INIT ;
 int NCI_RESET_TIMEOUT ;
 int NCI_UP ;
 int __nci_request (struct nci_dev*,int ,int ,int ) ;
 int atomic_set (int *,int) ;
 int clear_bit (int ,scalar_t__*) ;
 int del_timer_sync (int *) ;
 int flush_workqueue (int ) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nci_req_cancel (struct nci_dev*,int ) ;
 int nci_reset_req ;
 int set_bit (int ,scalar_t__*) ;
 int skb_queue_purge (int *) ;
 int stub1 (struct nci_dev*) ;
 int test_and_clear_bit (int ,scalar_t__*) ;

__attribute__((used)) static int nci_close_device(struct nci_dev *ndev)
{
 nci_req_cancel(ndev, ENODEV);
 mutex_lock(&ndev->req_lock);

 if (!test_and_clear_bit(NCI_UP, &ndev->flags)) {
  del_timer_sync(&ndev->cmd_timer);
  del_timer_sync(&ndev->data_timer);
  mutex_unlock(&ndev->req_lock);
  return 0;
 }


 skb_queue_purge(&ndev->rx_q);
 skb_queue_purge(&ndev->tx_q);


 flush_workqueue(ndev->rx_wq);
 flush_workqueue(ndev->tx_wq);


 skb_queue_purge(&ndev->cmd_q);
 atomic_set(&ndev->cmd_cnt, 1);

 set_bit(NCI_INIT, &ndev->flags);
 __nci_request(ndev, nci_reset_req, 0,
        msecs_to_jiffies(NCI_RESET_TIMEOUT));




 ndev->ops->close(ndev);

 clear_bit(NCI_INIT, &ndev->flags);

 del_timer_sync(&ndev->cmd_timer);


 flush_workqueue(ndev->cmd_wq);


 ndev->flags = 0;

 mutex_unlock(&ndev->req_lock);

 return 0;
}
