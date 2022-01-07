
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int ** features; int name; } ;
struct hci_cp_write_sc_support {scalar_t__ support; } ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_MGMT ;
 int HCI_OP_WRITE_SC_SUPPORT ;
 int HCI_SC_ENABLED ;
 int LMP_HOST_SC ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_write_sc_support* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_write_sc_support(struct hci_dev *hdev, struct sk_buff *skb)
{
 u8 status = *((u8 *) skb->data);
 struct hci_cp_write_sc_support *sent;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 sent = hci_sent_cmd_data(hdev, HCI_OP_WRITE_SC_SUPPORT);
 if (!sent)
  return;

 hci_dev_lock(hdev);

 if (!status) {
  if (sent->support)
   hdev->features[1][0] |= LMP_HOST_SC;
  else
   hdev->features[1][0] &= ~LMP_HOST_SC;
 }

 if (!hci_dev_test_flag(hdev, HCI_MGMT) && !status) {
  if (sent->support)
   hci_dev_set_flag(hdev, HCI_SC_ENABLED);
  else
   hci_dev_clear_flag(hdev, HCI_SC_ENABLED);
 }

 hci_dev_unlock(hdev);
}
