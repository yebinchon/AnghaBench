
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hci_dev {scalar_t__ adv_tx_power; } ;
struct adv_info {scalar_t__ tx_power; scalar_t__ adv_data_len; int adv_data; } ;
typedef scalar_t__ s8 ;


 int EIR_FLAGS ;
 int EIR_TX_POWER ;
 int HCI_BREDR_ENABLED ;
 scalar_t__ HCI_TX_POWER_INVALID ;
 int LE_AD_GENERAL ;
 int LE_AD_LIMITED ;
 int LE_AD_NO_BREDR ;
 int MGMT_ADV_FLAG_DISCOV ;
 int MGMT_ADV_FLAG_LIMITED_DISCOV ;
 int MGMT_ADV_FLAG_MANAGED_FLAGS ;
 int MGMT_ADV_FLAG_TX_POWER ;
 scalar_t__ ext_adv_capable (struct hci_dev*) ;
 int get_adv_instance_flags (struct hci_dev*,int) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 struct adv_info* hci_find_adv_instance (struct hci_dev*,int) ;
 int memcpy (int*,int ,scalar_t__) ;
 int mgmt_get_adv_discov_flags (struct hci_dev*) ;

__attribute__((used)) static u8 create_instance_adv_data(struct hci_dev *hdev, u8 instance, u8 *ptr)
{
 struct adv_info *adv_instance = ((void*)0);
 u8 ad_len = 0, flags = 0;
 u32 instance_flags;


 if (instance) {
  adv_instance = hci_find_adv_instance(hdev, instance);
  if (!adv_instance)
   return 0;
 }

 instance_flags = get_adv_instance_flags(hdev, instance);




 if (instance_flags & MGMT_ADV_FLAG_DISCOV)
  flags |= LE_AD_GENERAL;

 if (instance_flags & MGMT_ADV_FLAG_LIMITED_DISCOV)
  flags |= LE_AD_LIMITED;

 if (!hci_dev_test_flag(hdev, HCI_BREDR_ENABLED))
  flags |= LE_AD_NO_BREDR;

 if (flags || (instance_flags & MGMT_ADV_FLAG_MANAGED_FLAGS)) {



  if (!flags)
   flags |= mgmt_get_adv_discov_flags(hdev);




  if (flags) {
   ptr[0] = 0x02;
   ptr[1] = EIR_FLAGS;
   ptr[2] = flags;

   ad_len += 3;
   ptr += 3;
  }
 }

 if (adv_instance) {
  memcpy(ptr, adv_instance->adv_data,
         adv_instance->adv_data_len);
  ad_len += adv_instance->adv_data_len;
  ptr += adv_instance->adv_data_len;
 }

 if (instance_flags & MGMT_ADV_FLAG_TX_POWER) {
  s8 adv_tx_power;

  if (ext_adv_capable(hdev)) {
   if (adv_instance)
    adv_tx_power = adv_instance->tx_power;
   else
    adv_tx_power = hdev->adv_tx_power;
  } else {
   adv_tx_power = hdev->adv_tx_power;
  }


  if (adv_tx_power != HCI_TX_POWER_INVALID) {
   ptr[0] = 0x02;
   ptr[1] = EIR_TX_POWER;
   ptr[2] = (u8)adv_tx_power;

   ad_len += 3;
   ptr += 3;
  }
 }

 return ad_len;
}
