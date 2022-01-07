
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_cp_set_privacy {int privacy; int irk; } ;
struct hci_dev {int irk; int id; int name; } ;


 int BT_DBG (char*,int ) ;
 int HCI_LIMITED_PRIVACY ;
 int HCI_PRIVACY ;
 int HCI_RPA_EXPIRED ;
 int HCI_RPA_RESOLVING ;
 int MGMT_OP_SET_PRIVACY ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 int MGMT_STATUS_REJECTED ;
 int hci_adv_instances_set_rpa_expired (struct hci_dev*,int) ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_set_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 scalar_t__ hdev_is_powered (struct hci_dev*) ;
 int lmp_le_capable (struct hci_dev*) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 int new_settings (struct hci_dev*,struct sock*) ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;

__attribute__((used)) static int set_privacy(struct sock *sk, struct hci_dev *hdev, void *cp_data,
         u16 len)
{
 struct mgmt_cp_set_privacy *cp = cp_data;
 bool changed;
 int err;

 BT_DBG("request for %s", hdev->name);

 if (!lmp_le_capable(hdev))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_PRIVACY,
           MGMT_STATUS_NOT_SUPPORTED);

 if (cp->privacy != 0x00 && cp->privacy != 0x01 && cp->privacy != 0x02)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_PRIVACY,
           MGMT_STATUS_INVALID_PARAMS);

 if (hdev_is_powered(hdev))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_PRIVACY,
           MGMT_STATUS_REJECTED);

 hci_dev_lock(hdev);




 hci_dev_set_flag(hdev, HCI_RPA_RESOLVING);

 if (cp->privacy) {
  changed = !hci_dev_test_and_set_flag(hdev, HCI_PRIVACY);
  memcpy(hdev->irk, cp->irk, sizeof(hdev->irk));
  hci_dev_set_flag(hdev, HCI_RPA_EXPIRED);
  hci_adv_instances_set_rpa_expired(hdev, 1);
  if (cp->privacy == 0x02)
   hci_dev_set_flag(hdev, HCI_LIMITED_PRIVACY);
  else
   hci_dev_clear_flag(hdev, HCI_LIMITED_PRIVACY);
 } else {
  changed = hci_dev_test_and_clear_flag(hdev, HCI_PRIVACY);
  memset(hdev->irk, 0, sizeof(hdev->irk));
  hci_dev_clear_flag(hdev, HCI_RPA_EXPIRED);
  hci_adv_instances_set_rpa_expired(hdev, 0);
  hci_dev_clear_flag(hdev, HCI_LIMITED_PRIVACY);
 }

 err = send_settings_rsp(sk, MGMT_OP_SET_PRIVACY, hdev);
 if (err < 0)
  goto unlock;

 if (changed)
  err = new_settings(hdev, sk);

unlock:
 hci_dev_unlock(hdev);
 return err;
}
