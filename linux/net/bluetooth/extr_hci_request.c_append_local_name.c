
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int* dev_name; int* short_name; } ;
typedef int name ;


 int EIR_NAME_COMPLETE ;
 int EIR_NAME_SHORT ;
 int HCI_MAX_AD_LENGTH ;
 int HCI_MAX_SHORT_NAME_LENGTH ;
 int eir_append_data (int*,int,int ,int*,int) ;
 int memcpy (int*,int*,int) ;
 size_t strlen (int*) ;

u8 append_local_name(struct hci_dev *hdev, u8 *ptr, u8 ad_len)
{
 size_t short_len;
 size_t complete_len;


 if ((HCI_MAX_AD_LENGTH - ad_len) < HCI_MAX_SHORT_NAME_LENGTH + 3)
  return ad_len;


 complete_len = strlen(hdev->dev_name);
 if (complete_len && complete_len <= HCI_MAX_SHORT_NAME_LENGTH)
  return eir_append_data(ptr, ad_len, EIR_NAME_COMPLETE,
           hdev->dev_name, complete_len + 1);


 short_len = strlen(hdev->short_name);
 if (short_len)
  return eir_append_data(ptr, ad_len, EIR_NAME_SHORT,
           hdev->short_name, short_len + 1);




 if (complete_len) {
  u8 name[HCI_MAX_SHORT_NAME_LENGTH + 1];

  memcpy(name, hdev->dev_name, HCI_MAX_SHORT_NAME_LENGTH);
  name[HCI_MAX_SHORT_NAME_LENGTH] = '\0';

  return eir_append_data(ptr, ad_len, EIR_NAME_SHORT, name,
           sizeof(name));
 }

 return ad_len;
}
