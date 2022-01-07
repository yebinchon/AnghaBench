
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_net {int idr_lock; int idr; } ;
struct tcf_block {int index; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int idr_alloc_u32 (int *,struct tcf_block*,int *,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 struct tcf_net* net_generic (struct net*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcf_net_id ;

__attribute__((used)) static int tcf_block_insert(struct tcf_block *block, struct net *net,
       struct netlink_ext_ack *extack)
{
 struct tcf_net *tn = net_generic(net, tcf_net_id);
 int err;

 idr_preload(GFP_KERNEL);
 spin_lock(&tn->idr_lock);
 err = idr_alloc_u32(&tn->idr, block, &block->index, block->index,
       GFP_NOWAIT);
 spin_unlock(&tn->idr_lock);
 idr_preload_end();

 return err;
}
