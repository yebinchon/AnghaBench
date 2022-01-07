
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int common; } ;
struct ncsi_cmd_sma_pkt {TYPE_1__ cmd; int at_e; int index; int * mac; } ;
struct ncsi_cmd_arg {int * bytes; } ;


 int ncsi_cmd_build_header (int *,struct ncsi_cmd_arg*) ;
 struct ncsi_cmd_sma_pkt* skb_put_zero (struct sk_buff*,int) ;

__attribute__((used)) static int ncsi_cmd_handler_sma(struct sk_buff *skb,
    struct ncsi_cmd_arg *nca)
{
 struct ncsi_cmd_sma_pkt *cmd;
 int i;

 cmd = skb_put_zero(skb, sizeof(*cmd));
 for (i = 0; i < 6; i++)
  cmd->mac[i] = nca->bytes[i];
 cmd->index = nca->bytes[6];
 cmd->at_e = nca->bytes[7];
 ncsi_cmd_build_header(&cmd->cmd.common, nca);

 return 0;
}
