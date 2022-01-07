
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_dev {scalar_t__ adv_tx_power; int* le_features; } ;


 int HCI_LE_PHY_2M ;
 int HCI_LE_PHY_CODED ;
 scalar_t__ HCI_TX_POWER_INVALID ;
 int MGMT_ADV_FLAG_APPEARANCE ;
 int MGMT_ADV_FLAG_CONNECTABLE ;
 int MGMT_ADV_FLAG_DISCOV ;
 int MGMT_ADV_FLAG_LIMITED_DISCOV ;
 int MGMT_ADV_FLAG_LOCAL_NAME ;
 int MGMT_ADV_FLAG_MANAGED_FLAGS ;
 int MGMT_ADV_FLAG_SEC_1M ;
 int MGMT_ADV_FLAG_SEC_2M ;
 int MGMT_ADV_FLAG_SEC_CODED ;
 int MGMT_ADV_FLAG_TX_POWER ;
 scalar_t__ ext_adv_capable (struct hci_dev*) ;

__attribute__((used)) static u32 get_supported_adv_flags(struct hci_dev *hdev)
{
 u32 flags = 0;

 flags |= MGMT_ADV_FLAG_CONNECTABLE;
 flags |= MGMT_ADV_FLAG_DISCOV;
 flags |= MGMT_ADV_FLAG_LIMITED_DISCOV;
 flags |= MGMT_ADV_FLAG_MANAGED_FLAGS;
 flags |= MGMT_ADV_FLAG_APPEARANCE;
 flags |= MGMT_ADV_FLAG_LOCAL_NAME;




 if ((hdev->adv_tx_power != HCI_TX_POWER_INVALID) ||
     ext_adv_capable(hdev))
  flags |= MGMT_ADV_FLAG_TX_POWER;

 if (ext_adv_capable(hdev)) {
  flags |= MGMT_ADV_FLAG_SEC_1M;

  if (hdev->le_features[1] & HCI_LE_PHY_2M)
   flags |= MGMT_ADV_FLAG_SEC_2M;

  if (hdev->le_features[1] & HCI_LE_PHY_CODED)
   flags |= MGMT_ADV_FLAG_SEC_CODED;
 }

 return flags;
}
