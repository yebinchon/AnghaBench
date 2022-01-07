
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct hci_rp_read_clock {int accuracy; int clock; int handle; scalar_t__ status; } ;
struct hci_dev {void* clock; int name; } ;
struct hci_cp_read_clock {int which; } ;
struct hci_conn {int clock_accuracy; void* clock; } ;


 int BT_DBG (char*,int ) ;
 int HCI_OP_READ_CLOCK ;
 int __le16_to_cpu (int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_read_clock* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static void hci_cc_read_clock(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_rp_read_clock *rp = (void *) skb->data;
 struct hci_cp_read_clock *cp;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 if (skb->len < sizeof(*rp))
  return;

 if (rp->status)
  return;

 hci_dev_lock(hdev);

 cp = hci_sent_cmd_data(hdev, HCI_OP_READ_CLOCK);
 if (!cp)
  goto unlock;

 if (cp->which == 0x00) {
  hdev->clock = le32_to_cpu(rp->clock);
  goto unlock;
 }

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(rp->handle));
 if (conn) {
  conn->clock = le32_to_cpu(rp->clock);
  conn->clock_accuracy = le16_to_cpu(rp->accuracy);
 }

unlock:
 hci_dev_unlock(hdev);
}
