
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct net {int dummy; } ;


 int ife_net_id ;
 struct tc_action_net* net_generic (struct net*,int ) ;
 int tcf_idr_search (struct tc_action_net*,struct tc_action**,int ) ;

__attribute__((used)) static int tcf_ife_search(struct net *net, struct tc_action **a, u32 index)
{
 struct tc_action_net *tn = net_generic(net, ife_net_id);

 return tcf_idr_search(tn, a, index);
}
