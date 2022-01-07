
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hci_dev {int dummy; } ;
struct adv_info {int flags; } ;


 int HCI_ADVERTISING_CONNECTABLE ;
 int HCI_DISCOVERABLE ;
 int HCI_LIMITED_DISCOVERABLE ;
 int MGMT_ADV_FLAG_CONNECTABLE ;
 int MGMT_ADV_FLAG_DISCOV ;
 int MGMT_ADV_FLAG_LIMITED_DISCOV ;
 int MGMT_ADV_FLAG_MANAGED_FLAGS ;
 int MGMT_ADV_FLAG_TX_POWER ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 struct adv_info* hci_find_adv_instance (struct hci_dev*,int) ;

__attribute__((used)) static u32 get_adv_instance_flags(struct hci_dev *hdev, u8 instance)
{
 u32 flags;
 struct adv_info *adv_instance;

 if (instance == 0x00) {



  flags = MGMT_ADV_FLAG_TX_POWER | MGMT_ADV_FLAG_MANAGED_FLAGS;




  if (hci_dev_test_flag(hdev, HCI_ADVERTISING_CONNECTABLE))
   flags |= MGMT_ADV_FLAG_CONNECTABLE;

  if (hci_dev_test_flag(hdev, HCI_LIMITED_DISCOVERABLE))
   flags |= MGMT_ADV_FLAG_LIMITED_DISCOV;
  else if (hci_dev_test_flag(hdev, HCI_DISCOVERABLE))
   flags |= MGMT_ADV_FLAG_DISCOV;

  return flags;
 }

 adv_instance = hci_find_adv_instance(hdev, instance);


 if (!adv_instance)
  return 0;

 return adv_instance->flags;
}
