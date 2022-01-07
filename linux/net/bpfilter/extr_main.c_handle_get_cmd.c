
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_request {int cmd; } ;


 int ENOPROTOOPT ;

__attribute__((used)) static int handle_get_cmd(struct mbox_request *cmd)
{
 switch (cmd->cmd) {
 case 0:
  return 0;
 default:
  break;
 }
 return -ENOPROTOOPT;
}
