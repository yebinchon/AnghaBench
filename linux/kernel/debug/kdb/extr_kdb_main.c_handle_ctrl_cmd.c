
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_BUFLEN ;


 scalar_t__ KDB_CMD_HISTORY_COUNT ;
 int cmd_cur ;
 scalar_t__ cmd_head ;
 int * cmd_hist ;
 scalar_t__ cmd_tail ;
 scalar_t__ cmdptr ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static int handle_ctrl_cmd(char *cmd)
{




 if (cmd_head == cmd_tail)
  return 0;
 switch (*cmd) {
 case 16:
  if (cmdptr != cmd_tail)
   cmdptr = (cmdptr-1) % KDB_CMD_HISTORY_COUNT;
  strncpy(cmd_cur, cmd_hist[cmdptr], CMD_BUFLEN);
  return 1;
 case 14:
  if (cmdptr != cmd_head)
   cmdptr = (cmdptr+1) % KDB_CMD_HISTORY_COUNT;
  strncpy(cmd_cur, cmd_hist[cmdptr], CMD_BUFLEN);
  return 1;
 }
 return 0;
}
