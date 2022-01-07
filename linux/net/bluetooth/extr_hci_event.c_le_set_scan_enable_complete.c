
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct discovery_state {int state; int last_adv_data_len; int last_adv_data; int last_adv_flags; int last_adv_rssi; int last_adv_addr_type; int last_adv_addr; } ;
struct hci_dev {struct discovery_state discovery; int le_scan_disable; int le_scan_type; } ;


 int DISCOVERY_FINDING ;
 int DISCOVERY_STOPPED ;
 int HCI_LE_ADV ;
 int HCI_LE_SCAN ;
 int HCI_LE_SCAN_INTERRUPTED ;
 int LE_LINK ;
 int LE_SCAN_ACTIVE ;


 int bt_dev_err (struct hci_dev*,char*,int) ;
 int cancel_delayed_work (int *) ;
 int clear_pending_adv_report (struct hci_dev*) ;
 int has_pending_adv_report (struct hci_dev*) ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_discovery_set_state (struct hci_dev*,int ) ;
 int hci_req_reenable_advertising (struct hci_dev*) ;
 int mgmt_device_found (struct hci_dev*,int *,int ,int ,int *,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static void le_set_scan_enable_complete(struct hci_dev *hdev, u8 enable)
{
 hci_dev_lock(hdev);

 switch (enable) {
 case 128:
  hci_dev_set_flag(hdev, HCI_LE_SCAN);
  if (hdev->le_scan_type == LE_SCAN_ACTIVE)
   clear_pending_adv_report(hdev);
  break;

 case 129:




  if (has_pending_adv_report(hdev)) {
   struct discovery_state *d = &hdev->discovery;

   mgmt_device_found(hdev, &d->last_adv_addr, LE_LINK,
       d->last_adv_addr_type, ((void*)0),
       d->last_adv_rssi, d->last_adv_flags,
       d->last_adv_data,
       d->last_adv_data_len, ((void*)0), 0);
  }




  cancel_delayed_work(&hdev->le_scan_disable);

  hci_dev_clear_flag(hdev, HCI_LE_SCAN);
  if (hci_dev_test_and_clear_flag(hdev, HCI_LE_SCAN_INTERRUPTED))
   hci_discovery_set_state(hdev, DISCOVERY_STOPPED);
  else if (!hci_dev_test_flag(hdev, HCI_LE_ADV) &&
    hdev->discovery.state == DISCOVERY_FINDING)
   hci_req_reenable_advertising(hdev);

  break;

 default:
  bt_dev_err(hdev, "use of reserved LE_Scan_Enable param %d",
      enable);
  break;
 }

 hci_dev_unlock(hdev);
}
