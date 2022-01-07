
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int adv_instance_expire; int le_scan_restart; int le_scan_disable; int discov_off; int discoverable_update; int connectable_update; int scan_update; int bg_scan_update; int discov_update; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int adv_timeout_expire ;
 int bg_scan_update ;
 int connectable_update_work ;
 int discov_off ;
 int discov_update ;
 int discoverable_update_work ;
 int le_scan_disable_work ;
 int le_scan_restart_work ;
 int scan_update_work ;

void hci_request_setup(struct hci_dev *hdev)
{
 INIT_WORK(&hdev->discov_update, discov_update);
 INIT_WORK(&hdev->bg_scan_update, bg_scan_update);
 INIT_WORK(&hdev->scan_update, scan_update_work);
 INIT_WORK(&hdev->connectable_update, connectable_update_work);
 INIT_WORK(&hdev->discoverable_update, discoverable_update_work);
 INIT_DELAYED_WORK(&hdev->discov_off, discov_off);
 INIT_DELAYED_WORK(&hdev->le_scan_disable, le_scan_disable_work);
 INIT_DELAYED_WORK(&hdev->le_scan_restart, le_scan_restart_work);
 INIT_DELAYED_WORK(&hdev->adv_instance_expire, adv_timeout_expire);
}
