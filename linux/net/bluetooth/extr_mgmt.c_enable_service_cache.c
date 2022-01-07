
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int service_cache; int workqueue; } ;


 int CACHE_TIMEOUT ;
 int HCI_SERVICE_CACHE ;
 int hci_dev_test_and_set_flag (struct hci_dev*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static bool enable_service_cache(struct hci_dev *hdev)
{
 if (!hdev_is_powered(hdev))
  return 0;

 if (!hci_dev_test_and_set_flag(hdev, HCI_SERVICE_CACHE)) {
  queue_delayed_work(hdev->workqueue, &hdev->service_cache,
       CACHE_TIMEOUT);
  return 1;
 }

 return 0;
}
