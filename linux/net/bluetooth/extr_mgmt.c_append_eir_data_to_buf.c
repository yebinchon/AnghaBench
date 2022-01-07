
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hci_dev {int short_name; int dev_name; int appearance; int dev_class; } ;


 int EIR_APPEARANCE ;
 int EIR_CLASS_OF_DEV ;
 int EIR_NAME_COMPLETE ;
 int EIR_NAME_SHORT ;
 int HCI_BREDR_ENABLED ;
 int HCI_LE_ENABLED ;
 int eir_append_data (int *,int ,int ,int ,size_t) ;
 int eir_append_le16 (int *,int ,int ,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 size_t strlen (int ) ;

__attribute__((used)) static u16 append_eir_data_to_buf(struct hci_dev *hdev, u8 *eir)
{
 u16 eir_len = 0;
 size_t name_len;

 if (hci_dev_test_flag(hdev, HCI_BREDR_ENABLED))
  eir_len = eir_append_data(eir, eir_len, EIR_CLASS_OF_DEV,
       hdev->dev_class, 3);

 if (hci_dev_test_flag(hdev, HCI_LE_ENABLED))
  eir_len = eir_append_le16(eir, eir_len, EIR_APPEARANCE,
       hdev->appearance);

 name_len = strlen(hdev->dev_name);
 eir_len = eir_append_data(eir, eir_len, EIR_NAME_COMPLETE,
      hdev->dev_name, name_len);

 name_len = strlen(hdev->short_name);
 eir_len = eir_append_data(eir, eir_len, EIR_NAME_SHORT,
      hdev->short_name, name_len);

 return eir_len;
}
