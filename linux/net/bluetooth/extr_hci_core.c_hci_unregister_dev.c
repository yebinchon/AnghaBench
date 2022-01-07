
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int id; int le_resolv_list; int le_white_list; int whitelist; int blacklist; int req_workqueue; int workqueue; int fw_info; int hw_info; int debugfs; int dev; scalar_t__ rfkill; int mgmt_pending; int flags; int power_on; int list; int bus; int name; } ;


 int BT_DBG (char*,struct hci_dev*,int ,int ) ;
 int BUG_ON (int) ;
 int HCI_CONFIG ;
 int HCI_DEV_UNREG ;
 int HCI_INIT ;
 int HCI_SETUP ;
 int HCI_UNREGISTER ;
 int cancel_work_sync (int *) ;
 int debugfs_remove_recursive (int ) ;
 int destroy_workqueue (int ) ;
 int device_del (int *) ;
 int hci_adv_instances_clear (struct hci_dev*) ;
 int hci_bdaddr_list_clear (int *) ;
 int hci_conn_params_clear_all (struct hci_dev*) ;
 int hci_dev_do_close (struct hci_dev*) ;
 int hci_dev_list_lock ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_discovery_filter_clear (struct hci_dev*) ;
 int hci_index_ida ;
 int hci_link_keys_clear (struct hci_dev*) ;
 int hci_remote_oob_data_clear (struct hci_dev*) ;
 int hci_smp_irks_clear (struct hci_dev*) ;
 int hci_smp_ltks_clear (struct hci_dev*) ;
 int hci_sock_dev_event (struct hci_dev*,int ) ;
 int hci_uuids_clear (struct hci_dev*) ;
 int ida_simple_remove (int *,int) ;
 int kfree_const (int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mgmt_index_removed (struct hci_dev*) ;
 int rfkill_destroy (scalar_t__) ;
 int rfkill_unregister (scalar_t__) ;
 int test_bit (int ,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void hci_unregister_dev(struct hci_dev *hdev)
{
 int id;

 BT_DBG("%p name %s bus %d", hdev, hdev->name, hdev->bus);

 hci_dev_set_flag(hdev, HCI_UNREGISTER);

 id = hdev->id;

 write_lock(&hci_dev_list_lock);
 list_del(&hdev->list);
 write_unlock(&hci_dev_list_lock);

 cancel_work_sync(&hdev->power_on);

 hci_dev_do_close(hdev);

 if (!test_bit(HCI_INIT, &hdev->flags) &&
     !hci_dev_test_flag(hdev, HCI_SETUP) &&
     !hci_dev_test_flag(hdev, HCI_CONFIG)) {
  hci_dev_lock(hdev);
  mgmt_index_removed(hdev);
  hci_dev_unlock(hdev);
 }



 BUG_ON(!list_empty(&hdev->mgmt_pending));

 hci_sock_dev_event(hdev, HCI_DEV_UNREG);

 if (hdev->rfkill) {
  rfkill_unregister(hdev->rfkill);
  rfkill_destroy(hdev->rfkill);
 }

 device_del(&hdev->dev);

 debugfs_remove_recursive(hdev->debugfs);
 kfree_const(hdev->hw_info);
 kfree_const(hdev->fw_info);

 destroy_workqueue(hdev->workqueue);
 destroy_workqueue(hdev->req_workqueue);

 hci_dev_lock(hdev);
 hci_bdaddr_list_clear(&hdev->blacklist);
 hci_bdaddr_list_clear(&hdev->whitelist);
 hci_uuids_clear(hdev);
 hci_link_keys_clear(hdev);
 hci_smp_ltks_clear(hdev);
 hci_smp_irks_clear(hdev);
 hci_remote_oob_data_clear(hdev);
 hci_adv_instances_clear(hdev);
 hci_bdaddr_list_clear(&hdev->le_white_list);
 hci_bdaddr_list_clear(&hdev->le_resolv_list);
 hci_conn_params_clear_all(hdev);
 hci_discovery_filter_clear(hdev);
 hci_dev_unlock(hdev);

 hci_dev_put(hdev);

 ida_simple_remove(&hci_index_ida, id);
}
