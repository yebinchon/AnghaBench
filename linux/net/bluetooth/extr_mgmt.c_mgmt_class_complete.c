
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mgmt_pending_cmd {int opcode; int index; int sk; } ;
struct hci_dev {int dev_class; } ;


 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_cmd_complete (int ,int ,int ,int ,int ,int) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (int ) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;

__attribute__((used)) static void mgmt_class_complete(struct hci_dev *hdev, u16 mgmt_op, u8 status)
{
 struct mgmt_pending_cmd *cmd;

 hci_dev_lock(hdev);

 cmd = pending_find(mgmt_op, hdev);
 if (!cmd)
  goto unlock;

 mgmt_cmd_complete(cmd->sk, cmd->index, cmd->opcode,
     mgmt_status(status), hdev->dev_class, 3);

 mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
}
