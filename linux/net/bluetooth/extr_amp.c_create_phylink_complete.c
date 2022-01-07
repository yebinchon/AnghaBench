
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hci_dev {int name; } ;
struct hci_cp_create_phy_link {int phy_handle; } ;
struct hci_conn {int dummy; } ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_OP_CREATE_PHY_LINK ;
 int amp_write_remote_assoc (struct hci_dev*,int ) ;
 int hci_conn_del (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_create_phy_link* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void create_phylink_complete(struct hci_dev *hdev, u8 status,
        u16 opcode)
{
 struct hci_cp_create_phy_link *cp;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 cp = hci_sent_cmd_data(hdev, HCI_OP_CREATE_PHY_LINK);
 if (!cp)
  return;

 hci_dev_lock(hdev);

 if (status) {
  struct hci_conn *hcon;

  hcon = hci_conn_hash_lookup_handle(hdev, cp->phy_handle);
  if (hcon)
   hci_conn_del(hcon);
 } else {
  amp_write_remote_assoc(hdev, cp->phy_handle);
 }

 hci_dev_unlock(hdev);
}
