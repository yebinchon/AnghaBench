
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_key_refresh_complete {scalar_t__ status; int handle; } ;
struct hci_dev {int name; } ;
struct hci_conn {scalar_t__ type; scalar_t__ state; int disc_timeout; int flags; int pending_sec_level; int sec_level; } ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,scalar_t__,int ) ;
 int HCI_CONN_ENCRYPT_PEND ;
 int HCI_DISCONN_TIMEOUT ;
 int HCI_ERROR_AUTH_FAILURE ;
 scalar_t__ LE_LINK ;
 int __le16_to_cpu (int ) ;
 int clear_bit (int ,int *) ;
 int hci_auth_cfm (struct hci_conn*,scalar_t__) ;
 int hci_conn_drop (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_connect_cfm (struct hci_conn*,scalar_t__) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_disconnect (struct hci_conn*,int ) ;

__attribute__((used)) static void hci_key_refresh_complete_evt(struct hci_dev *hdev,
      struct sk_buff *skb)
{
 struct hci_ev_key_refresh_complete *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x handle 0x%4.4x", hdev->name, ev->status,
        __le16_to_cpu(ev->handle));

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (!conn)
  goto unlock;




 if (conn->type != LE_LINK)
  goto unlock;

 if (!ev->status)
  conn->sec_level = conn->pending_sec_level;

 clear_bit(HCI_CONN_ENCRYPT_PEND, &conn->flags);

 if (ev->status && conn->state == BT_CONNECTED) {
  hci_disconnect(conn, HCI_ERROR_AUTH_FAILURE);
  hci_conn_drop(conn);
  goto unlock;
 }

 if (conn->state == BT_CONFIG) {
  if (!ev->status)
   conn->state = BT_CONNECTED;

  hci_connect_cfm(conn, ev->status);
  hci_conn_drop(conn);
 } else {
  hci_auth_cfm(conn, ev->status);

  hci_conn_hold(conn);
  conn->disc_timeout = HCI_DISCONN_TIMEOUT;
  hci_conn_drop(conn);
 }

unlock:
 hci_dev_unlock(hdev);
}
