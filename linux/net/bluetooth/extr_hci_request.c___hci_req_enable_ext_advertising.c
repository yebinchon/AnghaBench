
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_le_set_ext_adv_enable {int enable; int num_of_sets; int duration; int handle; scalar_t__ data; } ;
struct hci_cp_ext_adv_set {int enable; int num_of_sets; int duration; int handle; scalar_t__ data; } ;
struct adv_info {int duration; } ;


 int EINVAL ;
 int HCI_OP_LE_SET_EXT_ADV_ENABLE ;
 int MSEC_PER_SEC ;
 int cpu_to_le16 (int) ;
 struct adv_info* hci_find_adv_instance (struct hci_dev*,int ) ;
 int hci_req_add (struct hci_request*,int ,int,int *) ;
 int memset (struct hci_cp_le_set_ext_adv_enable*,int ,int) ;

int __hci_req_enable_ext_advertising(struct hci_request *req, u8 instance)
{
 struct hci_dev *hdev = req->hdev;
 struct hci_cp_le_set_ext_adv_enable *cp;
 struct hci_cp_ext_adv_set *adv_set;
 u8 data[sizeof(*cp) + sizeof(*adv_set) * 1];
 struct adv_info *adv_instance;

 if (instance > 0) {
  adv_instance = hci_find_adv_instance(hdev, instance);
  if (!adv_instance)
   return -EINVAL;
 } else {
  adv_instance = ((void*)0);
 }

 cp = (void *) data;
 adv_set = (void *) cp->data;

 memset(cp, 0, sizeof(*cp));

 cp->enable = 0x01;
 cp->num_of_sets = 0x01;

 memset(adv_set, 0, sizeof(*adv_set));

 adv_set->handle = instance;




 if (adv_instance && adv_instance->duration) {
  u16 duration = adv_instance->duration * MSEC_PER_SEC;


  adv_set->duration = cpu_to_le16(duration / 10);
 }

 hci_req_add(req, HCI_OP_LE_SET_EXT_ADV_ENABLE,
      sizeof(*cp) + sizeof(*adv_set) * cp->num_of_sets,
      data);

 return 0;
}
