
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;} ;


 int cmd_status_rsp (struct mgmt_pending_cmd*,void*) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

__attribute__((used)) static void cmd_complete_rsp(struct mgmt_pending_cmd *cmd, void *data)
{
 if (cmd->cmd_complete) {
  u8 *status = data;

  cmd->cmd_complete(cmd, *status);
  mgmt_pending_remove(cmd);

  return;
 }

 cmd_status_rsp(cmd, data);
}
