
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {scalar_t__ le_scan_type; int flags; int name; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int DISCOVERY_STOPPED ;
 int HCI_INQUIRY ;
 int HCI_LE_SCAN ;
 scalar_t__ LE_SCAN_ACTIVE ;
 int clear_bit (int ,int *) ;
 int hci_conn_check_pending (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_discovery_set_state (struct hci_dev*,int ) ;
 int smp_mb__after_atomic () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void hci_cc_inquiry_cancel(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (status)
  return;

 clear_bit(HCI_INQUIRY, &hdev->flags);
 smp_mb__after_atomic();
 wake_up_bit(&hdev->flags, HCI_INQUIRY);

 hci_dev_lock(hdev);



 if (!hci_dev_test_flag(hdev, HCI_LE_SCAN) ||
     hdev->le_scan_type != LE_SCAN_ACTIVE)
  hci_discovery_set_state(hdev, DISCOVERY_STOPPED);
 hci_dev_unlock(hdev);

 hci_conn_check_pending(hdev);
}
