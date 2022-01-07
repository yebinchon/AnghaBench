
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int le_rx_def_phys; int le_tx_def_phys; int name; } ;
struct hci_cp_le_set_default_phy {int rx_phys; int tx_phys; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_OP_LE_SET_DEFAULT_PHY ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_le_set_default_phy* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_le_set_default_phy(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);
 struct hci_cp_le_set_default_phy *cp;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (status)
  return;

 cp = hci_sent_cmd_data(hdev, HCI_OP_LE_SET_DEFAULT_PHY);
 if (!cp)
  return;

 hci_dev_lock(hdev);

 hdev->le_tx_def_phys = cp->tx_phys;
 hdev->le_rx_def_phys = cp->rx_phys;

 hci_dev_unlock(hdev);
}
