
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_net {int idr_lock; int idr; } ;
struct tcf_block {int index; } ;
struct net {int dummy; } ;


 int idr_remove (int *,int ) ;
 struct tcf_net* net_generic (struct net*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcf_net_id ;

__attribute__((used)) static void tcf_block_remove(struct tcf_block *block, struct net *net)
{
 struct tcf_net *tn = net_generic(net, tcf_net_id);

 spin_lock(&tn->idr_lock);
 idr_remove(&tn->idr, block->index);
 spin_unlock(&tn->idr_lock);
}
