
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct inquiry_entry {int name_state; } ;
struct discovery_state {scalar_t__ state; int resolve; } ;
struct hci_dev {int quirks; int flags; int name; struct discovery_state discovery; } ;
typedef int __u8 ;


 int BDADDR_ANY ;
 int BT_DBG (char*,int ,int ) ;
 scalar_t__ DISCOVERY_FINDING ;
 int DISCOVERY_RESOLVING ;
 int DISCOVERY_STOPPED ;
 int HCI_INQUIRY ;
 int HCI_LE_SCAN ;
 int HCI_MGMT ;
 int HCI_QUIRK_SIMULTANEOUS_DISCOVERY ;
 int NAME_NEEDED ;
 int NAME_PENDING ;
 int hci_conn_check_pending (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_discovery_set_state (struct hci_dev*,int ) ;
 struct inquiry_entry* hci_inquiry_cache_lookup_resolve (struct hci_dev*,int ,int ) ;
 scalar_t__ hci_resolve_name (struct hci_dev*,struct inquiry_entry*) ;
 scalar_t__ list_empty (int *) ;
 int smp_mb__after_atomic () ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void hci_inquiry_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);
 struct discovery_state *discov = &hdev->discovery;
 struct inquiry_entry *e;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 hci_conn_check_pending(hdev);

 if (!test_and_clear_bit(HCI_INQUIRY, &hdev->flags))
  return;

 smp_mb__after_atomic();
 wake_up_bit(&hdev->flags, HCI_INQUIRY);

 if (!hci_dev_test_flag(hdev, HCI_MGMT))
  return;

 hci_dev_lock(hdev);

 if (discov->state != DISCOVERY_FINDING)
  goto unlock;

 if (list_empty(&discov->resolve)) {







  if (!hci_dev_test_flag(hdev, HCI_LE_SCAN) ||
      !test_bit(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks))
   hci_discovery_set_state(hdev, DISCOVERY_STOPPED);
  goto unlock;
 }

 e = hci_inquiry_cache_lookup_resolve(hdev, BDADDR_ANY, NAME_NEEDED);
 if (e && hci_resolve_name(hdev, e) == 0) {
  e->name_state = NAME_PENDING;
  hci_discovery_set_state(hdev, DISCOVERY_RESOLVING);
 } else {







  if (!hci_dev_test_flag(hdev, HCI_LE_SCAN) ||
      !test_bit(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks))
   hci_discovery_set_state(hdev, DISCOVERY_STOPPED);
 }

unlock:
 hci_dev_unlock(hdev);
}
