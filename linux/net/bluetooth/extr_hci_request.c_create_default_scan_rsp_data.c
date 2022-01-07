
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {scalar_t__ appearance; } ;


 int append_appearance (struct hci_dev*,int *,int ) ;
 int append_local_name (struct hci_dev*,int *,int ) ;

__attribute__((used)) static u8 create_default_scan_rsp_data(struct hci_dev *hdev, u8 *ptr)
{
 u8 scan_rsp_len = 0;

 if (hdev->appearance) {
  scan_rsp_len = append_appearance(hdev, ptr, scan_rsp_len);
 }

 return append_local_name(hdev, ptr, scan_rsp_len);
}
