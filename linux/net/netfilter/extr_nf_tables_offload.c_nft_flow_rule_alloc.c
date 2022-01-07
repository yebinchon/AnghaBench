
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int key; int mask; int dissector; } ;
struct nft_flow_rule {TYPE_2__ match; TYPE_3__* rule; } ;
struct TYPE_4__ {int * key; int * mask; int * dissector; } ;
struct TYPE_6__ {TYPE_1__ match; } ;


 int GFP_KERNEL ;
 TYPE_3__* flow_rule_alloc (int) ;
 int kfree (struct nft_flow_rule*) ;
 struct nft_flow_rule* kzalloc (int,int ) ;

__attribute__((used)) static struct nft_flow_rule *nft_flow_rule_alloc(int num_actions)
{
 struct nft_flow_rule *flow;

 flow = kzalloc(sizeof(struct nft_flow_rule), GFP_KERNEL);
 if (!flow)
  return ((void*)0);

 flow->rule = flow_rule_alloc(num_actions);
 if (!flow->rule) {
  kfree(flow);
  return ((void*)0);
 }

 flow->rule->match.dissector = &flow->match.dissector;
 flow->rule->match.mask = &flow->match.mask;
 flow->rule->match.key = &flow->match.key;

 return flow;
}
