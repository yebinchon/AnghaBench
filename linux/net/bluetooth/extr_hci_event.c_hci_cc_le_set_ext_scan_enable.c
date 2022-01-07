
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int name; } ;
struct hci_cp_le_set_ext_scan_enable {int enable; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_OP_LE_SET_EXT_SCAN_ENABLE ;
 struct hci_cp_le_set_ext_scan_enable* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int le_set_scan_enable_complete (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_le_set_ext_scan_enable(struct hci_dev *hdev,
          struct sk_buff *skb)
{
 struct hci_cp_le_set_ext_scan_enable *cp;
 __u8 status = *((__u8 *) skb->data);

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (status)
  return;

 cp = hci_sent_cmd_data(hdev, HCI_OP_LE_SET_EXT_SCAN_ENABLE);
 if (!cp)
  return;

 le_set_scan_enable_complete(hdev, cp->enable);
}
