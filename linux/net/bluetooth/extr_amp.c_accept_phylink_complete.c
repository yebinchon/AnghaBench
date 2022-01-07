
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct hci_dev {int name; } ;
struct hci_cp_accept_phy_link {int phy_handle; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_OP_ACCEPT_PHY_LINK ;
 int amp_write_remote_assoc (struct hci_dev*,int ) ;
 struct hci_cp_accept_phy_link* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void accept_phylink_complete(struct hci_dev *hdev, u8 status,
        u16 opcode)
{
 struct hci_cp_accept_phy_link *cp;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (status)
  return;

 cp = hci_sent_cmd_data(hdev, HCI_OP_ACCEPT_PHY_LINK);
 if (!cp)
  return;

 amp_write_remote_assoc(hdev, cp->phy_handle);
}
