
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_rule {int dummy; } ;
struct nft_flow_rule {int rule; int proto; } ;
struct nft_chain {int dummy; } ;
struct TYPE_2__ {int priority; } ;
struct nft_base_chain {TYPE_1__ ops; } ;
struct netlink_ext_ack {int dummy; } ;
struct flow_cls_offload {int command; unsigned long cookie; int rule; int common; } ;
typedef enum flow_cls_command { ____Placeholder_flow_cls_command } flow_cls_command ;
typedef int __be16 ;


 int EOPNOTSUPP ;
 int ETH_P_ALL ;
 int TC_SETUP_CLSFLOWER ;
 struct nft_base_chain* nft_base_chain (struct nft_chain*) ;
 int nft_flow_offload_common_init (int *,int ,int ,struct netlink_ext_ack*) ;
 int nft_is_base_chain (struct nft_chain*) ;
 int nft_setup_cb_call (struct nft_base_chain*,int ,struct flow_cls_offload*) ;

__attribute__((used)) static int nft_flow_offload_rule(struct nft_chain *chain,
     struct nft_rule *rule,
     struct nft_flow_rule *flow,
     enum flow_cls_command command)
{
 struct flow_cls_offload cls_flow = {};
 struct nft_base_chain *basechain;
 struct netlink_ext_ack extack;
 __be16 proto = ETH_P_ALL;

 if (!nft_is_base_chain(chain))
  return -EOPNOTSUPP;

 basechain = nft_base_chain(chain);

 if (flow)
  proto = flow->proto;

 nft_flow_offload_common_init(&cls_flow.common, proto,
         basechain->ops.priority, &extack);
 cls_flow.command = command;
 cls_flow.cookie = (unsigned long) rule;
 if (flow)
  cls_flow.rule = flow->rule;

 return nft_setup_cb_call(basechain, TC_SETUP_CLSFLOWER, &cls_flow);
}
