
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_remote_name {scalar_t__ status; int bdaddr; int * name; } ;
struct hci_dev {int name; } ;
struct hci_cp_auth_requested {int handle; } ;
struct hci_conn {int handle; int flags; } ;
typedef int cp ;


 int ACL_LINK ;
 int BT_DBG (char*,int ) ;
 int HCI_CONN_AUTH_INITIATOR ;
 int HCI_CONN_AUTH_PEND ;
 int HCI_MAX_NAME_LENGTH ;
 int HCI_MGMT ;
 int HCI_OP_AUTH_REQUESTED ;
 int __cpu_to_le16 (int ) ;
 int hci_check_pending_name (struct hci_dev*,struct hci_conn*,int *,int *,int ) ;
 int hci_conn_check_pending (struct hci_dev*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_outgoing_auth_needed (struct hci_dev*,struct hci_conn*) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_auth_requested*) ;
 int set_bit (int ,int *) ;
 int strnlen (int *,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void hci_remote_name_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_remote_name *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 hci_conn_check_pending(hdev);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);

 if (!hci_dev_test_flag(hdev, HCI_MGMT))
  goto check_auth;

 if (ev->status == 0)
  hci_check_pending_name(hdev, conn, &ev->bdaddr, ev->name,
           strnlen(ev->name, HCI_MAX_NAME_LENGTH));
 else
  hci_check_pending_name(hdev, conn, &ev->bdaddr, ((void*)0), 0);

check_auth:
 if (!conn)
  goto unlock;

 if (!hci_outgoing_auth_needed(hdev, conn))
  goto unlock;

 if (!test_and_set_bit(HCI_CONN_AUTH_PEND, &conn->flags)) {
  struct hci_cp_auth_requested cp;

  set_bit(HCI_CONN_AUTH_INITIATOR, &conn->flags);

  cp.handle = __cpu_to_le16(conn->handle);
  hci_send_cmd(hdev, HCI_OP_AUTH_REQUESTED, sizeof(cp), &cp);
 }

unlock:
 hci_dev_unlock(hdev);
}
