
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {int ndev; int msg_rx_queue; int msg_rx_work; int rx_hcp_frags; int cmd_timer; int msg_tx_work; int msg_tx_queue; int msg_tx_mutex; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int mutex_init (int *) ;
 int nfc_hci_cmd_timeout ;
 int nfc_hci_msg_rx_work ;
 int nfc_hci_msg_tx_work ;
 int nfc_register_device (int ) ;
 int skb_queue_head_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int nfc_hci_register_device(struct nfc_hci_dev *hdev)
{
 mutex_init(&hdev->msg_tx_mutex);

 INIT_LIST_HEAD(&hdev->msg_tx_queue);

 INIT_WORK(&hdev->msg_tx_work, nfc_hci_msg_tx_work);

 timer_setup(&hdev->cmd_timer, nfc_hci_cmd_timeout, 0);

 skb_queue_head_init(&hdev->rx_hcp_frags);

 INIT_WORK(&hdev->msg_rx_work, nfc_hci_msg_rx_work);

 skb_queue_head_init(&hdev->msg_rx_queue);

 return nfc_register_device(hdev->ndev);
}
