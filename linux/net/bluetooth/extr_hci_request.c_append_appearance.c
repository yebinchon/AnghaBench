
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int appearance; } ;


 int EIR_APPEARANCE ;
 int eir_append_le16 (int *,int ,int ,int ) ;

__attribute__((used)) static u8 append_appearance(struct hci_dev *hdev, u8 *ptr, u8 ad_len)
{
 return eir_append_le16(ptr, ad_len, EIR_APPEARANCE, hdev->appearance);
}
