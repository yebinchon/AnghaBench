
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_user_confirm_reply {int status; int bdaddr; } ;
struct hci_dev {int name; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ,int ) ;
 int HCI_MGMT ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_user_passkey_reply_complete (struct hci_dev*,int *,int ,int ,int ) ;

__attribute__((used)) static void hci_cc_user_passkey_reply(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_rp_user_confirm_reply *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 hci_dev_lock(hdev);

 if (hci_dev_test_flag(hdev, HCI_MGMT))
  mgmt_user_passkey_reply_complete(hdev, &rp->bdaddr, ACL_LINK,
       0, rp->status);

 hci_dev_unlock(hdev);
}
