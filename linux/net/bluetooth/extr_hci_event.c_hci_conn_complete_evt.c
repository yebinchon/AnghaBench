
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_conn_complete {scalar_t__ link_type; scalar_t__ status; int handle; int bdaddr; } ;
struct hci_dev {scalar_t__ hci_ver; int flags; int name; } ;
struct hci_cp_read_remote_features {int pkt_type; int handle; } ;
struct hci_cp_change_conn_ptype {int pkt_type; int handle; } ;
struct hci_conn {scalar_t__ type; int dst_type; int dst; int state; int pkt_type; int out; int flags; int disc_timeout; int handle; } ;
typedef int cp ;


 scalar_t__ ACL_LINK ;
 scalar_t__ BLUETOOTH_VER_2_0 ;
 int BT_CLOSED ;
 int BT_CONFIG ;
 int BT_CONNECTED ;
 int BT_DBG (char*,int ) ;
 scalar_t__ ESCO_LINK ;
 int HCI_AUTH ;
 int HCI_CONN_AUTH ;
 int HCI_CONN_ENCRYPT ;
 int HCI_DISCONN_TIMEOUT ;
 int HCI_ENCRYPT ;
 int HCI_OP_CHANGE_CONN_PTYPE ;
 int HCI_OP_READ_REMOTE_FEATURES ;
 int HCI_PAIRING_TIMEOUT ;
 scalar_t__ SCO_LINK ;
 int __le16_to_cpu (int ) ;
 int cpu_to_le16 (int ) ;
 int hci_conn_add_sysfs (struct hci_conn*) ;
 int hci_conn_check_pending (struct hci_dev*) ;
 int hci_conn_del (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,scalar_t__,int *) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_conn_ssp_enabled (struct hci_conn*) ;
 int hci_connect_cfm (struct hci_conn*,scalar_t__) ;
 int hci_debugfs_create_conn (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_find_link_key (struct hci_dev*,int *) ;
 int hci_req_update_scan (struct hci_dev*) ;
 int hci_sco_setup (struct hci_conn*,scalar_t__) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_read_remote_features*) ;
 int mgmt_connect_failed (struct hci_dev*,int *,scalar_t__,int ,scalar_t__) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_conn_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_conn_complete *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ev->link_type, &ev->bdaddr);
 if (!conn) {
  if (ev->link_type != SCO_LINK)
   goto unlock;

  conn = hci_conn_hash_lookup_ba(hdev, ESCO_LINK, &ev->bdaddr);
  if (!conn)
   goto unlock;

  conn->type = SCO_LINK;
 }

 if (!ev->status) {
  conn->handle = __le16_to_cpu(ev->handle);

  if (conn->type == ACL_LINK) {
   conn->state = BT_CONFIG;
   hci_conn_hold(conn);

   if (!conn->out && !hci_conn_ssp_enabled(conn) &&
       !hci_find_link_key(hdev, &ev->bdaddr))
    conn->disc_timeout = HCI_PAIRING_TIMEOUT;
   else
    conn->disc_timeout = HCI_DISCONN_TIMEOUT;
  } else
   conn->state = BT_CONNECTED;

  hci_debugfs_create_conn(conn);
  hci_conn_add_sysfs(conn);

  if (test_bit(HCI_AUTH, &hdev->flags))
   set_bit(HCI_CONN_AUTH, &conn->flags);

  if (test_bit(HCI_ENCRYPT, &hdev->flags))
   set_bit(HCI_CONN_ENCRYPT, &conn->flags);


  if (conn->type == ACL_LINK) {
   struct hci_cp_read_remote_features cp;
   cp.handle = ev->handle;
   hci_send_cmd(hdev, HCI_OP_READ_REMOTE_FEATURES,
         sizeof(cp), &cp);

   hci_req_update_scan(hdev);
  }


  if (!conn->out && hdev->hci_ver < BLUETOOTH_VER_2_0) {
   struct hci_cp_change_conn_ptype cp;
   cp.handle = ev->handle;
   cp.pkt_type = cpu_to_le16(conn->pkt_type);
   hci_send_cmd(hdev, HCI_OP_CHANGE_CONN_PTYPE, sizeof(cp),
         &cp);
  }
 } else {
  conn->state = BT_CLOSED;
  if (conn->type == ACL_LINK)
   mgmt_connect_failed(hdev, &conn->dst, conn->type,
         conn->dst_type, ev->status);
 }

 if (conn->type == ACL_LINK)
  hci_sco_setup(conn, ev->status);

 if (ev->status) {
  hci_connect_cfm(conn, ev->status);
  hci_conn_del(conn);
 } else if (ev->link_type != ACL_LINK)
  hci_connect_cfm(conn, ev->status);

unlock:
 hci_dev_unlock(hdev);

 hci_conn_check_pending(hdev);
}
