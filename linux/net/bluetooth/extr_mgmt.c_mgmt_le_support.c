
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int dummy; } ;


 int HCI_LE_ENABLED ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 int MGMT_STATUS_REJECTED ;
 int MGMT_STATUS_SUCCESS ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int lmp_le_capable (struct hci_dev*) ;

__attribute__((used)) static u8 mgmt_le_support(struct hci_dev *hdev)
{
 if (!lmp_le_capable(hdev))
  return MGMT_STATUS_NOT_SUPPORTED;
 else if (!hci_dev_test_flag(hdev, HCI_LE_ENABLED))
  return MGMT_STATUS_REJECTED;
 else
  return MGMT_STATUS_SUCCESS;
}
