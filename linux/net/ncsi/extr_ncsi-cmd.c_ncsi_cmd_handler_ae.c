
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ncsi_cmd_arg {int * dwords; int * bytes; } ;
struct TYPE_2__ {int common; } ;
struct ncsi_cmd_ae_pkt {TYPE_1__ cmd; int mode; int mc_id; } ;


 int htonl (int ) ;
 int ncsi_cmd_build_header (int *,struct ncsi_cmd_arg*) ;
 struct ncsi_cmd_ae_pkt* skb_put_zero (struct sk_buff*,int) ;

__attribute__((used)) static int ncsi_cmd_handler_ae(struct sk_buff *skb,
          struct ncsi_cmd_arg *nca)
{
 struct ncsi_cmd_ae_pkt *cmd;

 cmd = skb_put_zero(skb, sizeof(*cmd));
 cmd->mc_id = nca->bytes[0];
 cmd->mode = htonl(nca->dwords[1]);
 ncsi_cmd_build_header(&cmd->cmd.common, nca);

 return 0;
}
