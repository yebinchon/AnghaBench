
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct mgmt_pending_cmd {int sk; } ;
struct hci_dev {int id; } ;


 int BT_DBG (char*,scalar_t__) ;
 int MGMT_OP_SET_PHY_CONFIGURATION ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_cmd_complete (int ,int ,int ,int ,int *,int ) ;
 int mgmt_cmd_status (int ,int ,int ,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_phy_configuration_changed (struct hci_dev*,int ) ;
 int mgmt_status (scalar_t__) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;

__attribute__((used)) static void set_default_phy_complete(struct hci_dev *hdev, u8 status,
         u16 opcode, struct sk_buff *skb)
{
 struct mgmt_pending_cmd *cmd;

 BT_DBG("status 0x%02x", status);

 hci_dev_lock(hdev);

 cmd = pending_find(MGMT_OP_SET_PHY_CONFIGURATION, hdev);
 if (!cmd)
  goto unlock;

 if (status) {
  mgmt_cmd_status(cmd->sk, hdev->id,
    MGMT_OP_SET_PHY_CONFIGURATION,
    mgmt_status(status));
 } else {
  mgmt_cmd_complete(cmd->sk, hdev->id,
      MGMT_OP_SET_PHY_CONFIGURATION, 0,
      ((void*)0), 0);

  mgmt_phy_configuration_changed(hdev, cmd->sk);
 }

 mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
}
