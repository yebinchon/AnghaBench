
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ scan_duration; scalar_t__ scan_start; } ;
struct hci_dev {int le_scan_restart; int req_workqueue; TYPE_1__ discovery; } ;


 scalar_t__ DISCOV_LE_RESTART_DELAY ;
 int HCI_LE_SCAN ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 scalar_t__ jiffies ;
 int queue_delayed_work (int ,int *,scalar_t__) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void restart_le_scan(struct hci_dev *hdev)
{

 if (!hci_dev_test_flag(hdev, HCI_LE_SCAN))
  return;

 if (time_after(jiffies + DISCOV_LE_RESTART_DELAY,
         hdev->discovery.scan_start +
         hdev->discovery.scan_duration))
  return;

 queue_delayed_work(hdev->req_workqueue, &hdev->le_scan_restart,
      DISCOV_LE_RESTART_DELAY);
}
