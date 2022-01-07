
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hci_dev {int dummy; } ;





 int MGMT_STATUS_INVALID_PARAMS ;
 int mgmt_bredr_support (struct hci_dev*) ;
 int mgmt_le_support (struct hci_dev*) ;

__attribute__((used)) static bool discovery_type_is_valid(struct hci_dev *hdev, uint8_t type,
        uint8_t *mgmt_status)
{
 switch (type) {
 case 128:
  *mgmt_status = mgmt_le_support(hdev);
  if (*mgmt_status)
   return 0;
  break;
 case 129:
  *mgmt_status = mgmt_le_support(hdev);
  if (*mgmt_status)
   return 0;

 case 130:
  *mgmt_status = mgmt_bredr_support(hdev);
  if (*mgmt_status)
   return 0;
  break;
 default:
  *mgmt_status = MGMT_STATUS_INVALID_PARAMS;
  return 0;
 }

 return 1;
}
