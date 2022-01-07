
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hci_dev {int dummy; } ;


 int EIR_APPEARANCE ;
 int EIR_FLAGS ;
 int EIR_NAME_COMPLETE ;
 int EIR_NAME_SHORT ;
 int EIR_TX_POWER ;
 scalar_t__ appearance_managed (int ) ;
 scalar_t__ flags_managed (int ) ;
 scalar_t__ name_managed (int ) ;
 int tlv_data_max_len (struct hci_dev*,int ,int) ;
 scalar_t__ tx_power_managed (int ) ;

__attribute__((used)) static bool tlv_data_is_valid(struct hci_dev *hdev, u32 adv_flags, u8 *data,
         u8 len, bool is_adv_data)
{
 int i, cur_len;
 u8 max_len;

 max_len = tlv_data_max_len(hdev, adv_flags, is_adv_data);

 if (len > max_len)
  return 0;


 for (i = 0, cur_len = 0; i < len; i += (cur_len + 1)) {
  cur_len = data[i];

  if (data[i + 1] == EIR_FLAGS &&
      (!is_adv_data || flags_managed(adv_flags)))
   return 0;

  if (data[i + 1] == EIR_TX_POWER && tx_power_managed(adv_flags))
   return 0;

  if (data[i + 1] == EIR_NAME_COMPLETE && name_managed(adv_flags))
   return 0;

  if (data[i + 1] == EIR_NAME_SHORT && name_managed(adv_flags))
   return 0;

  if (data[i + 1] == EIR_APPEARANCE &&
      appearance_managed(adv_flags))
   return 0;




  if (i + cur_len >= len)
   return 0;
 }

 return 1;
}
