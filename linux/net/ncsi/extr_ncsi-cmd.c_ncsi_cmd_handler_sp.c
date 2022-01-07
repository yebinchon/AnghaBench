
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int common; } ;
struct ncsi_cmd_sp_pkt {TYPE_1__ cmd; int hw_arbitration; } ;
struct ncsi_cmd_arg {int * bytes; } ;


 int ncsi_cmd_build_header (int *,struct ncsi_cmd_arg*) ;
 struct ncsi_cmd_sp_pkt* skb_put_zero (struct sk_buff*,int) ;

__attribute__((used)) static int ncsi_cmd_handler_sp(struct sk_buff *skb,
          struct ncsi_cmd_arg *nca)
{
 struct ncsi_cmd_sp_pkt *cmd;

 cmd = skb_put_zero(skb, sizeof(*cmd));
 cmd->hw_arbitration = nca->bytes[0];
 ncsi_cmd_build_header(&cmd->cmd.common, nca);

 return 0;
}
