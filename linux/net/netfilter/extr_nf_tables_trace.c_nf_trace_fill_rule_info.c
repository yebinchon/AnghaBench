
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nft_traceinfo {scalar_t__ type; TYPE_2__* rule; TYPE_1__* verdict; } ;
struct TYPE_4__ {int handle; } ;
struct TYPE_3__ {scalar_t__ code; } ;


 int NFTA_TRACE_PAD ;
 int NFTA_TRACE_RULE_HANDLE ;
 scalar_t__ NFT_CONTINUE ;
 scalar_t__ NFT_TRACETYPE_RETURN ;
 int cpu_to_be64 (int ) ;
 int nla_put_be64 (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int nf_trace_fill_rule_info(struct sk_buff *nlskb,
       const struct nft_traceinfo *info)
{
 if (!info->rule)
  return 0;






 if (info->type == NFT_TRACETYPE_RETURN &&
     info->verdict->code == NFT_CONTINUE)
  return 0;

 return nla_put_be64(nlskb, NFTA_TRACE_RULE_HANDLE,
       cpu_to_be64(info->rule->handle),
       NFTA_TRACE_PAD);
}
