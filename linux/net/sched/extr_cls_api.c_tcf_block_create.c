
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int filter_chain_list; } ;
struct tcf_block {struct Qdisc* q; int index; struct net* net; int refcnt; TYPE_1__ chain0; int owner_list; int chain_list; int flow_block; int cb_lock; int proto_destroy_lock; int lock; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;


 int ENOMEM ;
 struct tcf_block* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int flow_block_init (int *) ;
 int init_rwsem (int *) ;
 struct tcf_block* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int refcount_set (int *,int) ;
 int tcf_block_shared (struct tcf_block*) ;

__attribute__((used)) static struct tcf_block *tcf_block_create(struct net *net, struct Qdisc *q,
       u32 block_index,
       struct netlink_ext_ack *extack)
{
 struct tcf_block *block;

 block = kzalloc(sizeof(*block), GFP_KERNEL);
 if (!block) {
  NL_SET_ERR_MSG(extack, "Memory allocation for block failed");
  return ERR_PTR(-ENOMEM);
 }
 mutex_init(&block->lock);
 mutex_init(&block->proto_destroy_lock);
 init_rwsem(&block->cb_lock);
 flow_block_init(&block->flow_block);
 INIT_LIST_HEAD(&block->chain_list);
 INIT_LIST_HEAD(&block->owner_list);
 INIT_LIST_HEAD(&block->chain0.filter_chain_list);

 refcount_set(&block->refcnt, 1);
 block->net = net;
 block->index = block_index;


 if (!tcf_block_shared(block))
  block->q = q;
 return block;
}
