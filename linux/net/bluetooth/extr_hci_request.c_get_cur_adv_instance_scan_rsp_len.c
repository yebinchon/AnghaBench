
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int cur_adv_instance; } ;
struct adv_info {int scan_rsp_len; } ;


 struct adv_info* hci_find_adv_instance (struct hci_dev*,int) ;

__attribute__((used)) static u8 get_cur_adv_instance_scan_rsp_len(struct hci_dev *hdev)
{
 u8 instance = hdev->cur_adv_instance;
 struct adv_info *adv_instance;


 if (instance == 0x00)
  return 0;

 adv_instance = hci_find_adv_instance(hdev, instance);
 if (!adv_instance)
  return 0;




 return adv_instance->scan_rsp_len;
}
