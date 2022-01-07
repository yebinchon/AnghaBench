
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_le_remote_feat_complete {int status; int features; int handle; } ;
struct hci_dev {int* le_features; int name; } ;
struct hci_conn {scalar_t__ state; int out; int * features; } ;
typedef int __u8 ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,int) ;
 int HCI_LE_SLAVE_FEATURES ;
 int __le16_to_cpu (int ) ;
 int hci_conn_drop (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_connect_cfm (struct hci_conn*,int) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void hci_le_remote_feat_complete_evt(struct hci_dev *hdev,
         struct sk_buff *skb)
{
 struct hci_ev_le_remote_feat_complete *ev = (void *)skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn) {
  if (!ev->status)
   memcpy(conn->features[0], ev->features, 8);

  if (conn->state == BT_CONFIG) {
   __u8 status;
   if ((hdev->le_features[0] & HCI_LE_SLAVE_FEATURES) &&
       !conn->out && ev->status == 0x1a)
    status = 0x00;
   else
    status = ev->status;

   conn->state = BT_CONNECTED;
   hci_connect_cfm(conn, status);
   hci_conn_drop(conn);
  }
 }

 hci_dev_unlock(hdev);
}
