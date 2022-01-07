
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int type; unsigned long scan_duration; int scan_start; scalar_t__ result_filtering; } ;
struct hci_dev {int le_scan_disable; int req_workqueue; TYPE_1__ discovery; int quirks; int name; int discov_interleaved_timeout; } ;


 int BT_DBG (char*,int ,int) ;
 int DISCOV_BREDR_INQUIRY_LEN ;
 int DISCOV_LE_SCAN_INT ;
 int DISCOV_LE_TIMEOUT ;



 int HCI_CMD_TIMEOUT ;
 scalar_t__ HCI_ERROR_UNSPECIFIED ;
 int HCI_INQUIRY ;
 int HCI_QUIRK_SIMULTANEOUS_DISCOVERY ;
 int HCI_QUIRK_STRICT_DUPLICATE_FILTER ;
 int active_scan ;
 int bredr_inquiry ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_sync (struct hci_dev*,int ,int,int ,scalar_t__*) ;
 int interleaved_discov ;
 int jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 unsigned long msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void start_discovery(struct hci_dev *hdev, u8 *status)
{
 unsigned long timeout;

 BT_DBG("%s type %u", hdev->name, hdev->discovery.type);

 switch (hdev->discovery.type) {
 case 130:
  if (!hci_dev_test_flag(hdev, HCI_INQUIRY))
   hci_req_sync(hdev, bredr_inquiry,
         DISCOV_BREDR_INQUIRY_LEN, HCI_CMD_TIMEOUT,
         status);
  return;
 case 129:
  if (test_bit(HCI_QUIRK_SIMULTANEOUS_DISCOVERY,
        &hdev->quirks)) {
   timeout = msecs_to_jiffies(DISCOV_LE_TIMEOUT);




   hci_req_sync(hdev, interleaved_discov,
         DISCOV_LE_SCAN_INT * 2, HCI_CMD_TIMEOUT,
         status);
   break;
  }

  timeout = msecs_to_jiffies(hdev->discov_interleaved_timeout);
  hci_req_sync(hdev, active_scan, DISCOV_LE_SCAN_INT,
        HCI_CMD_TIMEOUT, status);
  break;
 case 128:
  timeout = msecs_to_jiffies(DISCOV_LE_TIMEOUT);
  hci_req_sync(hdev, active_scan, DISCOV_LE_SCAN_INT,
        HCI_CMD_TIMEOUT, status);
  break;
 default:
  *status = HCI_ERROR_UNSPECIFIED;
  return;
 }

 if (*status)
  return;

 BT_DBG("%s timeout %u ms", hdev->name, jiffies_to_msecs(timeout));






 if (test_bit(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks) &&
       hdev->discovery.result_filtering) {
  hdev->discovery.scan_start = jiffies;
  hdev->discovery.scan_duration = timeout;
 }

 queue_delayed_work(hdev->req_workqueue, &hdev->le_scan_disable,
      timeout);
}
