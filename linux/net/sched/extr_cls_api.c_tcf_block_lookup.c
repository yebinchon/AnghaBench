
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_net {int idr; } ;
struct tcf_block {int dummy; } ;
struct net {int dummy; } ;


 struct tcf_block* idr_find (int *,int ) ;
 struct tcf_net* net_generic (struct net*,int ) ;
 int tcf_net_id ;

__attribute__((used)) static struct tcf_block *tcf_block_lookup(struct net *net, u32 block_index)
{
 struct tcf_net *tn = net_generic(net, tcf_net_id);

 return idr_find(&tn->idr, block_index);
}
