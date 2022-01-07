
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_hci_dev {struct nci_dev* ndev; int msg_rx_queue; int msg_rx_work; int rx_hcp_frags; } ;
struct nci_dev {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct nci_hci_dev* kzalloc (int,int ) ;
 int nci_hci_msg_rx_work ;
 int skb_queue_head_init (int *) ;

struct nci_hci_dev *nci_hci_allocate(struct nci_dev *ndev)
{
 struct nci_hci_dev *hdev;

 hdev = kzalloc(sizeof(*hdev), GFP_KERNEL);
 if (!hdev)
  return ((void*)0);

 skb_queue_head_init(&hdev->rx_hcp_frags);
 INIT_WORK(&hdev->msg_rx_work, nci_hci_msg_rx_work);
 skb_queue_head_init(&hdev->msg_rx_queue);
 hdev->ndev = ndev;

 return hdev;
}
