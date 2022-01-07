
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct hci_cp_remote_name_req {int bdaddr; } ;
struct hci_cp_auth_requested {int handle; } ;
struct hci_conn {int handle; int flags; } ;
typedef int auth_cp ;
typedef int __u8 ;


 int ACL_LINK ;
 int BT_DBG (char*,int ,int ) ;
 int HCI_CONN_AUTH_INITIATOR ;
 int HCI_CONN_AUTH_PEND ;
 int HCI_MGMT ;
 int HCI_OP_AUTH_REQUESTED ;
 int HCI_OP_REMOTE_NAME_REQ ;
 int __cpu_to_le16 (int ) ;
 int hci_check_pending_name (struct hci_dev*,struct hci_conn*,int *,int *,int ) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_outgoing_auth_needed (struct hci_dev*,struct hci_conn*) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_auth_requested*) ;
 struct hci_cp_remote_name_req* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void hci_cs_remote_name_req(struct hci_dev *hdev, __u8 status)
{
 struct hci_cp_remote_name_req *cp;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);



 if (!status)
  return;

 cp = hci_sent_cmd_data(hdev, HCI_OP_REMOTE_NAME_REQ);
 if (!cp)
  return;

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &cp->bdaddr);

 if (hci_dev_test_flag(hdev, HCI_MGMT))
  hci_check_pending_name(hdev, conn, &cp->bdaddr, ((void*)0), 0);

 if (!conn)
  goto unlock;

 if (!hci_outgoing_auth_needed(hdev, conn))
  goto unlock;

 if (!test_and_set_bit(HCI_CONN_AUTH_PEND, &conn->flags)) {
  struct hci_cp_auth_requested auth_cp;

  set_bit(HCI_CONN_AUTH_INITIATOR, &conn->flags);

  auth_cp.handle = __cpu_to_le16(conn->handle);
  hci_send_cmd(hdev, HCI_OP_AUTH_REQUESTED,
        sizeof(auth_cp), &auth_cp);
 }

unlock:
 hci_dev_unlock(hdev);
}
