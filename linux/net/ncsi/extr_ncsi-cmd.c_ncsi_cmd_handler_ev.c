
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int common; } ;
struct ncsi_cmd_ev_pkt {TYPE_1__ cmd; int mode; } ;
struct ncsi_cmd_arg {int * bytes; } ;


 int ncsi_cmd_build_header (int *,struct ncsi_cmd_arg*) ;
 struct ncsi_cmd_ev_pkt* skb_put_zero (struct sk_buff*,int) ;

__attribute__((used)) static int ncsi_cmd_handler_ev(struct sk_buff *skb,
          struct ncsi_cmd_arg *nca)
{
 struct ncsi_cmd_ev_pkt *cmd;

 cmd = skb_put_zero(skb, sizeof(*cmd));
 cmd->mode = nca->bytes[3];
 ncsi_cmd_build_header(&cmd->cmd.common, nca);

 return 0;
}
