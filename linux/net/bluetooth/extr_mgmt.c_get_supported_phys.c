
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_dev {int** features; int* le_features; } ;


 int HCI_LE_PHY_2M ;
 int HCI_LE_PHY_CODED ;
 int LMP_3SLOT ;
 int LMP_5SLOT ;
 int MGMT_PHY_BR_1M_1SLOT ;
 int MGMT_PHY_BR_1M_3SLOT ;
 int MGMT_PHY_BR_1M_5SLOT ;
 int MGMT_PHY_EDR_2M_1SLOT ;
 int MGMT_PHY_EDR_2M_3SLOT ;
 int MGMT_PHY_EDR_2M_5SLOT ;
 int MGMT_PHY_EDR_3M_1SLOT ;
 int MGMT_PHY_EDR_3M_3SLOT ;
 int MGMT_PHY_EDR_3M_5SLOT ;
 int MGMT_PHY_LE_1M_RX ;
 int MGMT_PHY_LE_1M_TX ;
 int MGMT_PHY_LE_2M_RX ;
 int MGMT_PHY_LE_2M_TX ;
 int MGMT_PHY_LE_CODED_RX ;
 int MGMT_PHY_LE_CODED_TX ;
 scalar_t__ lmp_bredr_capable (struct hci_dev*) ;
 scalar_t__ lmp_edr_2m_capable (struct hci_dev*) ;
 scalar_t__ lmp_edr_3m_capable (struct hci_dev*) ;
 scalar_t__ lmp_edr_3slot_capable (struct hci_dev*) ;
 scalar_t__ lmp_edr_5slot_capable (struct hci_dev*) ;
 scalar_t__ lmp_le_capable (struct hci_dev*) ;

__attribute__((used)) static u32 get_supported_phys(struct hci_dev *hdev)
{
 u32 supported_phys = 0;

 if (lmp_bredr_capable(hdev)) {
  supported_phys |= MGMT_PHY_BR_1M_1SLOT;

  if (hdev->features[0][0] & LMP_3SLOT)
   supported_phys |= MGMT_PHY_BR_1M_3SLOT;

  if (hdev->features[0][0] & LMP_5SLOT)
   supported_phys |= MGMT_PHY_BR_1M_5SLOT;

  if (lmp_edr_2m_capable(hdev)) {
   supported_phys |= MGMT_PHY_EDR_2M_1SLOT;

   if (lmp_edr_3slot_capable(hdev))
    supported_phys |= MGMT_PHY_EDR_2M_3SLOT;

   if (lmp_edr_5slot_capable(hdev))
    supported_phys |= MGMT_PHY_EDR_2M_5SLOT;

   if (lmp_edr_3m_capable(hdev)) {
    supported_phys |= MGMT_PHY_EDR_3M_1SLOT;

    if (lmp_edr_3slot_capable(hdev))
     supported_phys |= MGMT_PHY_EDR_3M_3SLOT;

    if (lmp_edr_5slot_capable(hdev))
     supported_phys |= MGMT_PHY_EDR_3M_5SLOT;
   }
  }
 }

 if (lmp_le_capable(hdev)) {
  supported_phys |= MGMT_PHY_LE_1M_TX;
  supported_phys |= MGMT_PHY_LE_1M_RX;

  if (hdev->le_features[1] & HCI_LE_PHY_2M) {
   supported_phys |= MGMT_PHY_LE_2M_TX;
   supported_phys |= MGMT_PHY_LE_2M_RX;
  }

  if (hdev->le_features[1] & HCI_LE_PHY_CODED) {
   supported_phys |= MGMT_PHY_LE_CODED_TX;
   supported_phys |= MGMT_PHY_LE_CODED_RX;
  }
 }

 return supported_phys;
}
