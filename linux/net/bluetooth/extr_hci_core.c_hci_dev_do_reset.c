
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ le_cnt; scalar_t__ sco_cnt; scalar_t__ acl_cnt; int cmd_cnt; int (* flush ) (struct hci_dev*) ;int workqueue; int cmd_q; int rx_q; int name; } ;


 int BT_DBG (char*,int ,struct hci_dev*) ;
 int HCI_INIT_TIMEOUT ;
 int __hci_req_sync (struct hci_dev*,int ,int ,int ,int *) ;
 int atomic_set (int *,int) ;
 int drain_workqueue (int ) ;
 int hci_conn_hash_flush (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_inquiry_cache_flush (struct hci_dev*) ;
 int hci_req_sync_lock (struct hci_dev*) ;
 int hci_req_sync_unlock (struct hci_dev*) ;
 int hci_reset_req ;
 int skb_queue_purge (int *) ;
 int stub1 (struct hci_dev*) ;

__attribute__((used)) static int hci_dev_do_reset(struct hci_dev *hdev)
{
 int ret;

 BT_DBG("%s %p", hdev->name, hdev);

 hci_req_sync_lock(hdev);


 skb_queue_purge(&hdev->rx_q);
 skb_queue_purge(&hdev->cmd_q);




 drain_workqueue(hdev->workqueue);

 hci_dev_lock(hdev);
 hci_inquiry_cache_flush(hdev);
 hci_conn_hash_flush(hdev);
 hci_dev_unlock(hdev);

 if (hdev->flush)
  hdev->flush(hdev);

 atomic_set(&hdev->cmd_cnt, 1);
 hdev->acl_cnt = 0; hdev->sco_cnt = 0; hdev->le_cnt = 0;

 ret = __hci_req_sync(hdev, hci_reset_req, 0, HCI_INIT_TIMEOUT, ((void*)0));

 hci_req_sync_unlock(hdev);
 return ret;
}
