
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_pin_code_reply {scalar_t__ status; int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_cp_pin_code_reply {int pin_len; int bdaddr; } ;
struct hci_conn {int pin_length; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_MGMT ;
 int HCI_OP_PIN_CODE_REPLY ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_pin_code_reply* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int mgmt_pin_code_reply_complete (struct hci_dev*,int *,scalar_t__) ;

__attribute__((used)) static void hci_cc_pin_code_reply(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_rp_pin_code_reply *rp = (void *) skb->data;
 struct hci_cp_pin_code_reply *cp;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 hci_dev_lock(hdev);

 if (hci_dev_test_flag(hdev, HCI_MGMT))
  mgmt_pin_code_reply_complete(hdev, &rp->bdaddr, rp->status);

 if (rp->status)
  goto unlock;

 cp = hci_sent_cmd_data(hdev, HCI_OP_PIN_CODE_REPLY);
 if (!cp)
  goto unlock;

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &cp->bdaddr);
 if (conn)
  conn->pin_length = cp->pin_len;

unlock:
 hci_dev_unlock(hdev);
}
