
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nci_dev {void* cmd_wq; void* rx_wq; TYPE_1__* nfc_dev; int conn_info_list; int req_lock; int data_timer; int cmd_timer; int tx_q; int rx_q; int cmd_q; void* tx_wq; int tx_work; int rx_work; int cmd_work; scalar_t__ flags; } ;
struct device {int dummy; } ;
typedef int name ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 void* create_singlethread_workqueue (char*) ;
 int destroy_workqueue (void*) ;
 char* dev_name (struct device*) ;
 int mutex_init (int *) ;
 int nci_cmd_timer ;
 int nci_cmd_work ;
 int nci_data_timer ;
 int nci_rx_work ;
 int nci_tx_work ;
 int nfc_register_device (TYPE_1__*) ;
 int skb_queue_head_init (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int timer_setup (int *,int ,int ) ;

int nci_register_device(struct nci_dev *ndev)
{
 int rc;
 struct device *dev = &ndev->nfc_dev->dev;
 char name[32];

 ndev->flags = 0;

 INIT_WORK(&ndev->cmd_work, nci_cmd_work);
 snprintf(name, sizeof(name), "%s_nci_cmd_wq", dev_name(dev));
 ndev->cmd_wq = create_singlethread_workqueue(name);
 if (!ndev->cmd_wq) {
  rc = -ENOMEM;
  goto exit;
 }

 INIT_WORK(&ndev->rx_work, nci_rx_work);
 snprintf(name, sizeof(name), "%s_nci_rx_wq", dev_name(dev));
 ndev->rx_wq = create_singlethread_workqueue(name);
 if (!ndev->rx_wq) {
  rc = -ENOMEM;
  goto destroy_cmd_wq_exit;
 }

 INIT_WORK(&ndev->tx_work, nci_tx_work);
 snprintf(name, sizeof(name), "%s_nci_tx_wq", dev_name(dev));
 ndev->tx_wq = create_singlethread_workqueue(name);
 if (!ndev->tx_wq) {
  rc = -ENOMEM;
  goto destroy_rx_wq_exit;
 }

 skb_queue_head_init(&ndev->cmd_q);
 skb_queue_head_init(&ndev->rx_q);
 skb_queue_head_init(&ndev->tx_q);

 timer_setup(&ndev->cmd_timer, nci_cmd_timer, 0);
 timer_setup(&ndev->data_timer, nci_data_timer, 0);

 mutex_init(&ndev->req_lock);
 INIT_LIST_HEAD(&ndev->conn_info_list);

 rc = nfc_register_device(ndev->nfc_dev);
 if (rc)
  goto destroy_rx_wq_exit;

 goto exit;

destroy_rx_wq_exit:
 destroy_workqueue(ndev->rx_wq);

destroy_cmd_wq_exit:
 destroy_workqueue(ndev->cmd_wq);

exit:
 return rc;
}
