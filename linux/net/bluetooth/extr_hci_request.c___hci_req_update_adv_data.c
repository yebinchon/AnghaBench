
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {void* adv_data_len; int adv_data; } ;
struct hci_cp_le_set_ext_adv_data {void* length; int data; int frag_pref; int operation; scalar_t__ handle; } ;
struct hci_cp_le_set_adv_data {void* length; int data; int frag_pref; int operation; scalar_t__ handle; } ;
typedef int cp ;


 int HCI_LE_ENABLED ;
 int HCI_OP_LE_SET_ADV_DATA ;
 int HCI_OP_LE_SET_EXT_ADV_DATA ;
 int LE_SET_ADV_DATA_NO_FRAG ;
 int LE_SET_ADV_DATA_OP_COMPLETE ;
 void* create_instance_adv_data (struct hci_dev*,void*,int ) ;
 scalar_t__ ext_adv_capable (struct hci_dev*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_le_set_ext_adv_data*) ;
 scalar_t__ memcmp (int ,int ,void*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct hci_cp_le_set_ext_adv_data*,int ,int) ;

void __hci_req_update_adv_data(struct hci_request *req, u8 instance)
{
 struct hci_dev *hdev = req->hdev;
 u8 len;

 if (!hci_dev_test_flag(hdev, HCI_LE_ENABLED))
  return;

 if (ext_adv_capable(hdev)) {
  struct hci_cp_le_set_ext_adv_data cp;

  memset(&cp, 0, sizeof(cp));

  len = create_instance_adv_data(hdev, instance, cp.data);


  if (hdev->adv_data_len == len &&
      memcmp(cp.data, hdev->adv_data, len) == 0)
   return;

  memcpy(hdev->adv_data, cp.data, sizeof(cp.data));
  hdev->adv_data_len = len;

  cp.length = len;
  cp.handle = 0;
  cp.operation = LE_SET_ADV_DATA_OP_COMPLETE;
  cp.frag_pref = LE_SET_ADV_DATA_NO_FRAG;

  hci_req_add(req, HCI_OP_LE_SET_EXT_ADV_DATA, sizeof(cp), &cp);
 } else {
  struct hci_cp_le_set_adv_data cp;

  memset(&cp, 0, sizeof(cp));

  len = create_instance_adv_data(hdev, instance, cp.data);


  if (hdev->adv_data_len == len &&
      memcmp(cp.data, hdev->adv_data, len) == 0)
   return;

  memcpy(hdev->adv_data, cp.data, sizeof(cp.data));
  hdev->adv_data_len = len;

  cp.length = len;

  hci_req_add(req, HCI_OP_LE_SET_ADV_DATA, sizeof(cp), &cp);
 }
}
