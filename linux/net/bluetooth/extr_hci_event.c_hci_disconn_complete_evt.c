
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_disconn_complete {int reason; scalar_t__ status; int handle; } ;
struct hci_dev {int pend_le_conns; int name; } ;
struct hci_conn_params {int auto_connect; int action; } ;
struct hci_conn {scalar_t__ type; int dst_type; int dst; int flags; int state; } ;


 scalar_t__ ACL_LINK ;
 int BT_CLOSED ;
 int BT_DBG (char*,int ,scalar_t__) ;



 int HCI_CONN_AUTH_FAILURE ;
 int HCI_CONN_FLUSH_KEY ;
 int HCI_CONN_MGMT_CONNECTED ;
 int HCI_ERROR_CONNECTION_TIMEOUT ;
 scalar_t__ LE_LINK ;
 scalar_t__ MGMT_DEV_DISCONN_AUTH_FAILURE ;
 int __le16_to_cpu (int ) ;
 int hci_conn_del (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 struct hci_conn_params* hci_conn_params_lookup (struct hci_dev*,int *,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_disconn_cfm (struct hci_conn*,int ) ;
 int hci_remove_link_key (struct hci_dev*,int *) ;
 int hci_req_reenable_advertising (struct hci_dev*) ;
 int hci_req_update_scan (struct hci_dev*) ;
 scalar_t__ hci_to_mgmt_reason (int ) ;
 int hci_update_background_scan (struct hci_dev*) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int mgmt_device_disconnected (struct hci_dev*,int *,scalar_t__,int ,scalar_t__,int) ;
 int mgmt_disconnect_failed (struct hci_dev*,int *,scalar_t__,int ,scalar_t__) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_disconn_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_disconn_complete *ev = (void *) skb->data;
 u8 reason;
 struct hci_conn_params *params;
 struct hci_conn *conn;
 bool mgmt_connected;
 u8 type;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (!conn)
  goto unlock;

 if (ev->status) {
  mgmt_disconnect_failed(hdev, &conn->dst, conn->type,
           conn->dst_type, ev->status);
  goto unlock;
 }

 conn->state = BT_CLOSED;

 mgmt_connected = test_and_clear_bit(HCI_CONN_MGMT_CONNECTED, &conn->flags);

 if (test_bit(HCI_CONN_AUTH_FAILURE, &conn->flags))
  reason = MGMT_DEV_DISCONN_AUTH_FAILURE;
 else
  reason = hci_to_mgmt_reason(ev->reason);

 mgmt_device_disconnected(hdev, &conn->dst, conn->type, conn->dst_type,
    reason, mgmt_connected);

 if (conn->type == ACL_LINK) {
  if (test_bit(HCI_CONN_FLUSH_KEY, &conn->flags))
   hci_remove_link_key(hdev, &conn->dst);

  hci_req_update_scan(hdev);
 }

 params = hci_conn_params_lookup(hdev, &conn->dst, conn->dst_type);
 if (params) {
  switch (params->auto_connect) {
  case 128:
   if (ev->reason != HCI_ERROR_CONNECTION_TIMEOUT)
    break;


  case 129:
  case 130:
   list_del_init(&params->action);
   list_add(&params->action, &hdev->pend_le_conns);
   hci_update_background_scan(hdev);
   break;

  default:
   break;
  }
 }

 type = conn->type;

 hci_disconn_cfm(conn, ev->reason);
 hci_conn_del(conn);
 if (type == LE_LINK)
  hci_req_reenable_advertising(hdev);

unlock:
 hci_dev_unlock(hdev);
}
