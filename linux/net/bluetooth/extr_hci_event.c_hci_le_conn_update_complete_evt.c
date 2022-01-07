
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_le_conn_update_complete {int supervision_timeout; int latency; int interval; int handle; scalar_t__ status; } ;
struct hci_dev {int name; } ;
struct hci_conn {void* le_supv_timeout; void* le_conn_latency; void* le_conn_interval; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int __le16_to_cpu (int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 void* le16_to_cpu (int ) ;

__attribute__((used)) static void hci_le_conn_update_complete_evt(struct hci_dev *hdev,
         struct sk_buff *skb)
{
 struct hci_ev_le_conn_update_complete *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 if (ev->status)
  return;

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn) {
  conn->le_conn_interval = le16_to_cpu(ev->interval);
  conn->le_conn_latency = le16_to_cpu(ev->latency);
  conn->le_supv_timeout = le16_to_cpu(ev->supervision_timeout);
 }

 hci_dev_unlock(hdev);
}
