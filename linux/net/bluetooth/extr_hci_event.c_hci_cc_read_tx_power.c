
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_tx_power {int tx_power; int handle; scalar_t__ status; } ;
struct hci_dev {int name; } ;
struct hci_cp_read_tx_power {int type; } ;
struct hci_conn {int max_tx_power; int tx_power; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_OP_READ_TX_POWER ;
 int __le16_to_cpu (int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_read_tx_power* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_read_tx_power(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_cp_read_tx_power *sent;
 struct hci_rp_read_tx_power *rp = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 sent = hci_sent_cmd_data(hdev, HCI_OP_READ_TX_POWER);
 if (!sent)
  return;

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(rp->handle));
 if (!conn)
  goto unlock;

 switch (sent->type) {
 case 0x00:
  conn->tx_power = rp->tx_power;
  break;
 case 0x01:
  conn->max_tx_power = rp->tx_power;
  break;
 }

unlock:
 hci_dev_unlock(hdev);
}
