
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct hci_dev {int rpa_expired; int service_cache; } ;


 int HCI_BONDABLE ;
 int HCI_MGMT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_and_set_flag (struct hci_dev*,int ) ;
 int rpa_expired ;
 int service_cache_off ;

__attribute__((used)) static void mgmt_init_hdev(struct sock *sk, struct hci_dev *hdev)
{
 if (hci_dev_test_and_set_flag(hdev, HCI_MGMT))
  return;

 INIT_DELAYED_WORK(&hdev->service_cache, service_cache_off);
 INIT_DELAYED_WORK(&hdev->rpa_expired, rpa_expired);






 hci_dev_clear_flag(hdev, HCI_BONDABLE);
}
