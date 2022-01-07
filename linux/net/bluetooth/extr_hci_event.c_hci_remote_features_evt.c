
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_remote_features {int status; int handle; int features; } ;
struct hci_dev {scalar_t__ state; int flags; int dst; int * features; int name; } ;
struct hci_cp_remote_name_req {int page; int pscan_rep_mode; int bdaddr; int handle; } ;
struct hci_cp_read_remote_ext_features {int page; int pscan_rep_mode; int bdaddr; int handle; } ;
struct hci_conn {scalar_t__ state; int flags; int dst; int * features; int name; } ;
typedef int cp ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,int ) ;
 int HCI_CONN_MGMT_CONNECTED ;
 int HCI_OP_READ_REMOTE_EXT_FEATURES ;
 int HCI_OP_REMOTE_NAME_REQ ;
 int __le16_to_cpu (int ) ;
 int bacpy (int *,int *) ;
 int hci_conn_drop (struct hci_dev*) ;
 struct hci_dev* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_connect_cfm (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_outgoing_auth_needed (struct hci_dev*,struct hci_dev*) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_remote_name_req*) ;
 scalar_t__ lmp_ext_feat_capable (struct hci_dev*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct hci_cp_remote_name_req*,int ,int) ;
 int mgmt_device_connected (struct hci_dev*,struct hci_dev*,int ,int *,int ) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hci_remote_features_evt(struct hci_dev *hdev,
        struct sk_buff *skb)
{
 struct hci_ev_remote_features *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (!conn)
  goto unlock;

 if (!ev->status)
  memcpy(conn->features[0], ev->features, 8);

 if (conn->state != BT_CONFIG)
  goto unlock;

 if (!ev->status && lmp_ext_feat_capable(hdev) &&
     lmp_ext_feat_capable(conn)) {
  struct hci_cp_read_remote_ext_features cp;
  cp.handle = ev->handle;
  cp.page = 0x01;
  hci_send_cmd(hdev, HCI_OP_READ_REMOTE_EXT_FEATURES,
        sizeof(cp), &cp);
  goto unlock;
 }

 if (!ev->status && !test_bit(HCI_CONN_MGMT_CONNECTED, &conn->flags)) {
  struct hci_cp_remote_name_req cp;
  memset(&cp, 0, sizeof(cp));
  bacpy(&cp.bdaddr, &conn->dst);
  cp.pscan_rep_mode = 0x02;
  hci_send_cmd(hdev, HCI_OP_REMOTE_NAME_REQ, sizeof(cp), &cp);
 } else if (!test_and_set_bit(HCI_CONN_MGMT_CONNECTED, &conn->flags))
  mgmt_device_connected(hdev, conn, 0, ((void*)0), 0);

 if (!hci_outgoing_auth_needed(hdev, conn)) {
  conn->state = BT_CONNECTED;
  hci_connect_cfm(conn, ev->status);
  hci_conn_drop(conn);
 }

unlock:
 hci_dev_unlock(hdev);
}
