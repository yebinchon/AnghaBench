
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;} ;
struct hci_conn {int dummy; } ;


 int MGMT_STATUS_FAILED ;
 int MGMT_STATUS_SUCCESS ;
 struct mgmt_pending_cmd* find_pairing (struct hci_conn*) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

void mgmt_smp_complete(struct hci_conn *conn, bool complete)
{
 u8 status = complete ? MGMT_STATUS_SUCCESS : MGMT_STATUS_FAILED;
 struct mgmt_pending_cmd *cmd;

 cmd = find_pairing(conn);
 if (cmd) {
  cmd->cmd_complete(cmd, status);
  mgmt_pending_remove(cmd);
 }
}
