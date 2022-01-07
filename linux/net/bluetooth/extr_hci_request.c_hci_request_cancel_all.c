
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ adv_instance_timeout; int adv_instance_expire; int le_scan_restart; int le_scan_disable; int discov_off; int discoverable_update; int connectable_update; int scan_update; int bg_scan_update; int discov_update; } ;


 int ENODEV ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int hci_req_sync_cancel (struct hci_dev*,int ) ;

void hci_request_cancel_all(struct hci_dev *hdev)
{
 hci_req_sync_cancel(hdev, ENODEV);

 cancel_work_sync(&hdev->discov_update);
 cancel_work_sync(&hdev->bg_scan_update);
 cancel_work_sync(&hdev->scan_update);
 cancel_work_sync(&hdev->connectable_update);
 cancel_work_sync(&hdev->discoverable_update);
 cancel_delayed_work_sync(&hdev->discov_off);
 cancel_delayed_work_sync(&hdev->le_scan_disable);
 cancel_delayed_work_sync(&hdev->le_scan_restart);

 if (hdev->adv_instance_timeout) {
  cancel_delayed_work_sync(&hdev->adv_instance_expire);
  hdev->adv_instance_timeout = 0;
 }
}
