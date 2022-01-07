
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mgmt_pending_cmd {int opcode; int index; int sk; } ;


 int mgmt_cmd_status (int ,int ,int ,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;

__attribute__((used)) static void cmd_status_rsp(struct mgmt_pending_cmd *cmd, void *data)
{
 u8 *status = data;

 mgmt_cmd_status(cmd->sk, cmd->index, cmd->opcode, *status);
 mgmt_pending_remove(cmd);
}
