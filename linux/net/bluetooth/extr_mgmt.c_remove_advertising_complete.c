
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mgmt_rp_remove_advertising {int instance; } ;
struct mgmt_pending_cmd {int opcode; int index; int sk; struct mgmt_cp_remove_advertising* param; } ;
struct mgmt_cp_remove_advertising {int instance; } ;
struct hci_dev {int dummy; } ;
typedef int rp ;


 int BT_DBG (char*,int ) ;
 int MGMT_OP_REMOVE_ADVERTISING ;
 int MGMT_STATUS_SUCCESS ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_cmd_complete (int ,int ,int ,int ,struct mgmt_rp_remove_advertising*,int) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;

__attribute__((used)) static void remove_advertising_complete(struct hci_dev *hdev, u8 status,
     u16 opcode)
{
 struct mgmt_pending_cmd *cmd;
 struct mgmt_cp_remove_advertising *cp;
 struct mgmt_rp_remove_advertising rp;

 BT_DBG("status %d", status);

 hci_dev_lock(hdev);





 cmd = pending_find(MGMT_OP_REMOVE_ADVERTISING, hdev);
 if (!cmd)
  goto unlock;

 cp = cmd->param;
 rp.instance = cp->instance;

 mgmt_cmd_complete(cmd->sk, cmd->index, cmd->opcode, MGMT_STATUS_SUCCESS,
     &rp, sizeof(rp));
 mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
}
