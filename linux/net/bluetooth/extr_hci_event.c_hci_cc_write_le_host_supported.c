
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int ** features; int name; } ;
struct hci_cp_write_le_host_supported {scalar_t__ simul; scalar_t__ le; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_ADVERTISING ;
 int HCI_LE_ENABLED ;
 int HCI_OP_WRITE_LE_HOST_SUPPORTED ;
 int LMP_HOST_LE ;
 int LMP_HOST_LE_BREDR ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_write_le_host_supported* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_write_le_host_supported(struct hci_dev *hdev,
        struct sk_buff *skb)
{
 struct hci_cp_write_le_host_supported *sent;
 __u8 status = *((__u8 *) skb->data);

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (status)
  return;

 sent = hci_sent_cmd_data(hdev, HCI_OP_WRITE_LE_HOST_SUPPORTED);
 if (!sent)
  return;

 hci_dev_lock(hdev);

 if (sent->le) {
  hdev->features[1][0] |= LMP_HOST_LE;
  hci_dev_set_flag(hdev, HCI_LE_ENABLED);
 } else {
  hdev->features[1][0] &= ~LMP_HOST_LE;
  hci_dev_clear_flag(hdev, HCI_LE_ENABLED);
  hci_dev_clear_flag(hdev, HCI_ADVERTISING);
 }

 if (sent->simul)
  hdev->features[1][0] |= LMP_HOST_LE_BREDR;
 else
  hdev->features[1][0] &= ~LMP_HOST_LE_BREDR;

 hci_dev_unlock(hdev);
}
