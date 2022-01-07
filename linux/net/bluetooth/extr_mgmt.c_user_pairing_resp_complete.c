
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;} ;
struct hci_dev {int dummy; } ;
typedef int bdaddr_t ;


 int ENOENT ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (int ) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

__attribute__((used)) static int user_pairing_resp_complete(struct hci_dev *hdev, bdaddr_t *bdaddr,
          u8 link_type, u8 addr_type, u8 status,
          u8 opcode)
{
 struct mgmt_pending_cmd *cmd;

 cmd = pending_find(opcode, hdev);
 if (!cmd)
  return -ENOENT;

 cmd->cmd_complete(cmd, mgmt_status(status));
 mgmt_pending_remove(cmd);

 return 0;
}
