
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_rmh {int * Cmd; int DspStat; int LgStat; int LgCmd; } ;
struct TYPE_2__ {int opcode; int st_type; int st_length; int length; } ;


 unsigned int CMD_LAST_INDEX ;
 scalar_t__ snd_BUG_ON (int) ;
 TYPE_1__* vx_dsp_cmds ;

void vx_init_rmh(struct vx_rmh *rmh, unsigned int cmd)
{
 if (snd_BUG_ON(cmd >= CMD_LAST_INDEX))
  return;
 rmh->LgCmd = vx_dsp_cmds[cmd].length;
 rmh->LgStat = vx_dsp_cmds[cmd].st_length;
 rmh->DspStat = vx_dsp_cmds[cmd].st_type;
 rmh->Cmd[0] = vx_dsp_cmds[cmd].opcode;
}
