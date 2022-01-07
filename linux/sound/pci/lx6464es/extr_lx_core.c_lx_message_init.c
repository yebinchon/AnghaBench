
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lx_rmh {int cmd_idx; int * stat; int * cmd; int dsp_stat; int stat_len; int cmd_len; } ;
typedef enum cmd_mb_opcodes { ____Placeholder_cmd_mb_opcodes } cmd_mb_opcodes ;
struct TYPE_2__ {int dcStatusType; int dcStatusLength; int dcCmdLength; int dcCodeOp; } ;


 int CMD_14_INVALID ;
 int REG_CRM_NUMBER ;
 TYPE_1__* dsp_commands ;
 int memset (int *,int ,int) ;
 int snd_BUG_ON (int) ;

__attribute__((used)) static void lx_message_init(struct lx_rmh *rmh, enum cmd_mb_opcodes cmd)
{
 snd_BUG_ON(cmd >= CMD_14_INVALID);

 rmh->cmd[0] = dsp_commands[cmd].dcCodeOp;
 rmh->cmd_len = dsp_commands[cmd].dcCmdLength;
 rmh->stat_len = dsp_commands[cmd].dcStatusLength;
 rmh->dsp_stat = dsp_commands[cmd].dcStatusType;
 rmh->cmd_idx = cmd;
 memset(&rmh->cmd[1], 0, (REG_CRM_NUMBER - 1) * sizeof(u32));







}
