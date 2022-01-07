
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hci_dev {int dummy; } ;


 int HCI_BONDABLE ;
 int HCI_LIMITED_PRIVACY ;
 int HCI_PRIVACY ;
 int MGMT_ADV_FLAG_DISCOV ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;

__attribute__((used)) static bool adv_use_rpa(struct hci_dev *hdev, uint32_t flags)
{

 if (!hci_dev_test_flag(hdev, HCI_PRIVACY))
  return 0;


 if (!hci_dev_test_flag(hdev, HCI_LIMITED_PRIVACY))
  return 1;




 if ((flags & MGMT_ADV_FLAG_DISCOV) &&
     hci_dev_test_flag(hdev, HCI_BONDABLE))
  return 0;




 return 1;
}
