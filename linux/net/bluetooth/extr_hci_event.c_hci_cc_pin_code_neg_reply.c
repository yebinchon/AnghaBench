
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_pin_code_neg_reply {int status; int bdaddr; } ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_MGMT ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_pin_code_neg_reply_complete (struct hci_dev*,int *,int ) ;

__attribute__((used)) static void hci_cc_pin_code_neg_reply(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_rp_pin_code_neg_reply *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 hci_dev_lock(hdev);

 if (hci_dev_test_flag(hdev, HCI_MGMT))
  mgmt_pin_code_neg_reply_complete(hdev, &rp->bdaddr,
       rp->status);

 hci_dev_unlock(hdev);
}
