
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;} ;
struct hci_conn {int dummy; } ;


 int BT_DBG (char*,...) ;
 struct mgmt_pending_cmd* find_pairing (struct hci_conn*) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (int ) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

__attribute__((used)) static void pairing_complete_cb(struct hci_conn *conn, u8 status)
{
 struct mgmt_pending_cmd *cmd;

 BT_DBG("status %u", status);

 cmd = find_pairing(conn);
 if (!cmd) {
  BT_DBG("Unable to find a pending command");
  return;
 }

 cmd->cmd_complete(cmd, mgmt_status(status));
 mgmt_pending_remove(cmd);
}
