
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mgmt_pending_cmd {int param; int opcode; int index; int sk; } ;
struct mgmt_addr_info {int dummy; } ;


 int mgmt_cmd_complete (int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int addr_cmd_complete(struct mgmt_pending_cmd *cmd, u8 status)
{
 return mgmt_cmd_complete(cmd->sk, cmd->index, cmd->opcode, status,
     cmd->param, sizeof(struct mgmt_addr_info));
}
