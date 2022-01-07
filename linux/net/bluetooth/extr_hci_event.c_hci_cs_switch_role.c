
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int name; } ;
struct hci_cp_switch_role {int bdaddr; } ;
struct hci_conn {int flags; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ,int ) ;
 int HCI_CONN_RSWITCH_PEND ;
 int HCI_OP_SWITCH_ROLE ;
 int clear_bit (int ,int *) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_switch_role* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cs_switch_role(struct hci_dev *hdev, u8 status)
{
 struct hci_cp_switch_role *cp;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (!status)
  return;

 cp = hci_sent_cmd_data(hdev, HCI_OP_SWITCH_ROLE);
 if (!cp)
  return;

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &cp->bdaddr);
 if (conn)
  clear_bit(HCI_CONN_RSWITCH_PEND, &conn->flags);

 hci_dev_unlock(hdev);
}
