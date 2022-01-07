
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct hci_dev {int dummy; } ;


 int HCI_CONNECTABLE ;
 int HCI_DISCOVERABLE ;
 int MGMT_OP_SET_CONNECTABLE ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_update_scan (struct hci_dev*) ;
 int hci_update_background_scan (struct hci_dev*) ;
 int new_settings (struct hci_dev*,struct sock*) ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;

__attribute__((used)) static int set_connectable_update_settings(struct hci_dev *hdev,
        struct sock *sk, u8 val)
{
 bool changed = 0;
 int err;

 if (!!val != hci_dev_test_flag(hdev, HCI_CONNECTABLE))
  changed = 1;

 if (val) {
  hci_dev_set_flag(hdev, HCI_CONNECTABLE);
 } else {
  hci_dev_clear_flag(hdev, HCI_CONNECTABLE);
  hci_dev_clear_flag(hdev, HCI_DISCOVERABLE);
 }

 err = send_settings_rsp(sk, MGMT_OP_SET_CONNECTABLE, hdev);
 if (err < 0)
  return err;

 if (changed) {
  hci_req_update_scan(hdev);
  hci_update_background_scan(hdev);
  return new_settings(hdev, sk);
 }

 return 0;
}
