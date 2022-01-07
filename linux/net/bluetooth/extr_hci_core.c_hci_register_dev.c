
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dev_type; int id; void* req_workqueue; void* workqueue; int power_on; int quirks; int list; int * rfkill; int dev; int name; int debugfs; int bus; int send; int close; int open; } ;


 int BT_DBG (char*,struct hci_dev*,int ,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int HCI_AUTO_OFF ;
 int HCI_BREDR_ENABLED ;
 int HCI_DEV_REG ;

 int HCI_QUIRK_RAW_DEVICE ;
 int HCI_RFKILLED ;
 int HCI_SETUP ;
 int HCI_UNCONFIGURED ;
 int IS_ERR_OR_NULL (int ) ;
 int RFKILL_TYPE_BLUETOOTH ;
 int WQ_HIGHPRI ;
 void* alloc_ordered_workqueue (char*,int ,int ) ;
 int bt_debugfs ;
 int debugfs_create_dir (int ,int ) ;
 int destroy_workqueue (void*) ;
 int dev_set_name (int *,char*,int ) ;
 int device_add (int *) ;
 int hci_dev_hold (struct hci_dev*) ;
 int hci_dev_list ;
 int hci_dev_list_lock ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_index_ida ;
 int hci_leds_init (struct hci_dev*) ;
 int hci_rfkill_ops ;
 int hci_sock_dev_event (struct hci_dev*,int ) ;
 int ida_simple_get (int *,int,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int list_add (int *,int *) ;
 int queue_work (void*,int *) ;
 int * rfkill_alloc (int ,int *,int ,int *,struct hci_dev*) ;
 scalar_t__ rfkill_blocked (int *) ;
 int rfkill_destroy (int *) ;
 scalar_t__ rfkill_register (int *) ;
 int sprintf (int ,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int hci_register_dev(struct hci_dev *hdev)
{
 int id, error;

 if (!hdev->open || !hdev->close || !hdev->send)
  return -EINVAL;




 switch (hdev->dev_type) {
 case 128:
  id = ida_simple_get(&hci_index_ida, 0, 0, GFP_KERNEL);
  break;
 case 129:
  id = ida_simple_get(&hci_index_ida, 1, 0, GFP_KERNEL);
  break;
 default:
  return -EINVAL;
 }

 if (id < 0)
  return id;

 sprintf(hdev->name, "hci%d", id);
 hdev->id = id;

 BT_DBG("%p name %s bus %d", hdev, hdev->name, hdev->bus);

 hdev->workqueue = alloc_ordered_workqueue("%s", WQ_HIGHPRI, hdev->name);
 if (!hdev->workqueue) {
  error = -ENOMEM;
  goto err;
 }

 hdev->req_workqueue = alloc_ordered_workqueue("%s", WQ_HIGHPRI,
            hdev->name);
 if (!hdev->req_workqueue) {
  destroy_workqueue(hdev->workqueue);
  error = -ENOMEM;
  goto err;
 }

 if (!IS_ERR_OR_NULL(bt_debugfs))
  hdev->debugfs = debugfs_create_dir(hdev->name, bt_debugfs);

 dev_set_name(&hdev->dev, "%s", hdev->name);

 error = device_add(&hdev->dev);
 if (error < 0)
  goto err_wqueue;

 hci_leds_init(hdev);

 hdev->rfkill = rfkill_alloc(hdev->name, &hdev->dev,
        RFKILL_TYPE_BLUETOOTH, &hci_rfkill_ops,
        hdev);
 if (hdev->rfkill) {
  if (rfkill_register(hdev->rfkill) < 0) {
   rfkill_destroy(hdev->rfkill);
   hdev->rfkill = ((void*)0);
  }
 }

 if (hdev->rfkill && rfkill_blocked(hdev->rfkill))
  hci_dev_set_flag(hdev, HCI_RFKILLED);

 hci_dev_set_flag(hdev, HCI_SETUP);
 hci_dev_set_flag(hdev, HCI_AUTO_OFF);

 if (hdev->dev_type == 128) {



  hci_dev_set_flag(hdev, HCI_BREDR_ENABLED);
 }

 write_lock(&hci_dev_list_lock);
 list_add(&hdev->list, &hci_dev_list);
 write_unlock(&hci_dev_list_lock);




 if (test_bit(HCI_QUIRK_RAW_DEVICE, &hdev->quirks))
  hci_dev_set_flag(hdev, HCI_UNCONFIGURED);

 hci_sock_dev_event(hdev, HCI_DEV_REG);
 hci_dev_hold(hdev);

 queue_work(hdev->req_workqueue, &hdev->power_on);

 return id;

err_wqueue:
 destroy_workqueue(hdev->workqueue);
 destroy_workqueue(hdev->req_workqueue);
err:
 ida_simple_remove(&hci_index_ida, hdev->id);

 return error;
}
