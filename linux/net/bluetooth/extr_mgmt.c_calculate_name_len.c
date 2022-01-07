
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int dummy; } ;


 int HCI_MAX_SHORT_NAME_LENGTH ;
 int append_local_name (struct hci_dev*,int *,int ) ;

__attribute__((used)) static u8 calculate_name_len(struct hci_dev *hdev)
{
 u8 buf[HCI_MAX_SHORT_NAME_LENGTH + 3];

 return append_local_name(hdev, buf, 0);
}
