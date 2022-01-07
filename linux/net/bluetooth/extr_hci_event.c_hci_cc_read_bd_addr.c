
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_bd_addr {int bdaddr; scalar_t__ status; } ;
struct hci_dev {int setup_addr; int bdaddr; int flags; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_INIT ;
 int HCI_SETUP ;
 int bacpy (int *,int *) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_cc_read_bd_addr(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_rp_read_bd_addr *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 if (test_bit(HCI_INIT, &hdev->flags))
  bacpy(&hdev->bdaddr, &rp->bdaddr);

 if (hci_dev_test_flag(hdev, HCI_SETUP))
  bacpy(&hdev->setup_addr, &rp->bdaddr);
}
