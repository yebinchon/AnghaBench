
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_block {int refcnt; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct Qdisc_class_ops {struct tcf_block* (* tcf_block ) (struct Qdisc*,unsigned long,struct netlink_ext_ack*) ;} ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct Qdisc_class_ops* cl_ops; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct tcf_block* ERR_PTR (int ) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int TCM_IFINDEX_MAGIC_BLOCK ;
 int refcount_inc (int *) ;
 struct tcf_block* stub1 (struct Qdisc*,unsigned long,struct netlink_ext_ack*) ;
 struct tcf_block* tcf_block_refcnt_get (struct net*,int ) ;
 scalar_t__ tcf_block_shared (struct tcf_block*) ;

__attribute__((used)) static struct tcf_block *__tcf_block_find(struct net *net, struct Qdisc *q,
       unsigned long cl, int ifindex,
       u32 block_index,
       struct netlink_ext_ack *extack)
{
 struct tcf_block *block;

 if (ifindex == TCM_IFINDEX_MAGIC_BLOCK) {
  block = tcf_block_refcnt_get(net, block_index);
  if (!block) {
   NL_SET_ERR_MSG(extack, "Block of given index was not found");
   return ERR_PTR(-EINVAL);
  }
 } else {
  const struct Qdisc_class_ops *cops = q->ops->cl_ops;

  block = cops->tcf_block(q, cl, extack);
  if (!block)
   return ERR_PTR(-EINVAL);

  if (tcf_block_shared(block)) {
   NL_SET_ERR_MSG(extack, "This filter block is shared. Please use the block index to manipulate the filters");
   return ERR_PTR(-EOPNOTSUPP);
  }







  refcount_inc(&block->refcnt);
 }

 return block;
}
