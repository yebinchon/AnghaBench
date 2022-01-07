
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int workqueue; int name; } ;
struct hci_conn {int conn_timeout; int le_conn_timeout; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_LE_ADV ;
 int HCI_OP_LE_SET_ADV_ENABLE ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_conn* hci_lookup_le_connect (struct hci_dev*) ;
 scalar_t__* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void hci_cc_le_set_adv_enable(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 *sent, status = *((__u8 *) skb->data);

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (status)
  return;

 sent = hci_sent_cmd_data(hdev, HCI_OP_LE_SET_ADV_ENABLE);
 if (!sent)
  return;

 hci_dev_lock(hdev);




 if (*sent) {
  struct hci_conn *conn;

  hci_dev_set_flag(hdev, HCI_LE_ADV);

  conn = hci_lookup_le_connect(hdev);
  if (conn)
   queue_delayed_work(hdev->workqueue,
        &conn->le_conn_timeout,
        conn->conn_timeout);
 } else {
  hci_dev_clear_flag(hdev, HCI_LE_ADV);
 }

 hci_dev_unlock(hdev);
}
