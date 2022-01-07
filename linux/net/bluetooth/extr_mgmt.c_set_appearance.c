
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sock {int dummy; } ;
struct mgmt_cp_set_appearance {int appearance; } ;
struct hci_dev {scalar_t__ appearance; int id; } ;


 int BT_DBG (char*) ;
 int HCI_LE_ADV ;
 int MGMT_ADV_FLAG_APPEARANCE ;
 int MGMT_OP_SET_APPEARANCE ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 int adv_expire (struct hci_dev*,int ) ;
 int ext_info_changed (struct hci_dev*,struct sock*) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int lmp_le_capable (struct hci_dev*) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,int *,int ) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;

__attribute__((used)) static int set_appearance(struct sock *sk, struct hci_dev *hdev, void *data,
     u16 len)
{
 struct mgmt_cp_set_appearance *cp = data;
 u16 apperance;
 int err;

 BT_DBG("");

 if (!lmp_le_capable(hdev))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_APPEARANCE,
           MGMT_STATUS_NOT_SUPPORTED);

 apperance = le16_to_cpu(cp->appearance);

 hci_dev_lock(hdev);

 if (hdev->appearance != apperance) {
  hdev->appearance = apperance;

  if (hci_dev_test_flag(hdev, HCI_LE_ADV))
   adv_expire(hdev, MGMT_ADV_FLAG_APPEARANCE);

  ext_info_changed(hdev, sk);
 }

 err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_SET_APPEARANCE, 0, ((void*)0),
    0);

 hci_dev_unlock(hdev);

 return err;
}
