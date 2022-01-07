
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ncsi_cmd_pkt_hdr {int dummy; } ;
struct TYPE_2__ {int common; } ;
struct ncsi_cmd_oem_pkt {TYPE_1__ cmd; int mfr_id; } ;
struct ncsi_cmd_arg {int payload; int data; } ;


 int memcpy (int *,int ,unsigned int) ;
 int ncsi_cmd_build_header (int *,struct ncsi_cmd_arg*) ;
 struct ncsi_cmd_oem_pkt* skb_put_zero (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int ncsi_cmd_handler_oem(struct sk_buff *skb,
    struct ncsi_cmd_arg *nca)
{
 struct ncsi_cmd_oem_pkt *cmd;
 unsigned int len;

 len = sizeof(struct ncsi_cmd_pkt_hdr) + 4;
 if (nca->payload < 26)
  len += 26;
 else
  len += nca->payload;

 cmd = skb_put_zero(skb, len);
 memcpy(&cmd->mfr_id, nca->data, nca->payload);
 ncsi_cmd_build_header(&cmd->cmd.common, nca);

 return 0;
}
