
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct cmd_lookup {scalar_t__ sk; struct hci_dev* member_1; int * member_0; } ;


 int BT_DBG (char*,int) ;
 int MGMT_OP_SET_POWERED ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_update_background_scan (struct hci_dev*) ;
 int mgmt_pending_foreach (int ,struct hci_dev*,int ,struct cmd_lookup*) ;
 int new_settings (struct hci_dev*,scalar_t__) ;
 int restart_le_actions (struct hci_dev*) ;
 int settings_rsp ;
 int sock_put (scalar_t__) ;

void mgmt_power_on(struct hci_dev *hdev, int err)
{
 struct cmd_lookup match = { ((void*)0), hdev };

 BT_DBG("err %d", err);

 hci_dev_lock(hdev);

 if (!err) {
  restart_le_actions(hdev);
  hci_update_background_scan(hdev);
 }

 mgmt_pending_foreach(MGMT_OP_SET_POWERED, hdev, settings_rsp, &match);

 new_settings(hdev, match.sk);

 if (match.sk)
  sock_put(match.sk);

 hci_dev_unlock(hdev);
}
