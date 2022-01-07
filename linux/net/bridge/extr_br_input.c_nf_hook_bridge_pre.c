
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct nf_hook_state {int dummy; } ;
struct nf_hook_entries {unsigned int num_hook_entries; int * hooks; } ;
struct TYPE_3__ {int * hooks_bridge; } ;
struct net {TYPE_1__ nf; } ;
struct TYPE_4__ {int br_netfilter_broute; } ;


 TYPE_2__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 size_t NFPROTO_BRIDGE ;

 size_t NF_BR_PRE_ROUTING ;


 unsigned int NF_VERDICT_MASK ;
 int RX_HANDLER_CONSUMED ;
 int RX_HANDLER_PASS ;
 int br_handle_frame_finish (struct net*,int *,struct sk_buff*) ;
 struct net* dev_net (int ) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned int nf_hook_entry_hookfn (int *,struct sk_buff*,struct nf_hook_state*) ;
 int nf_hook_state_init (struct nf_hook_state*,size_t,size_t,int ,int *,int *,struct net*,int (*) (struct net*,int *,struct sk_buff*)) ;
 int ** nf_hooks_needed ;
 int nf_queue (struct sk_buff*,struct nf_hook_state*,unsigned int,unsigned int) ;
 struct nf_hook_entries* rcu_dereference (int ) ;
 int static_key_false (int *) ;

__attribute__((used)) static int nf_hook_bridge_pre(struct sk_buff *skb, struct sk_buff **pskb)
{
 br_handle_frame_finish(dev_net(skb->dev), ((void*)0), skb);

 return RX_HANDLER_CONSUMED;
}
