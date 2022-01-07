
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct tcf_proto {TYPE_1__* ops; int refcnt; int lock; struct tcf_chain* chain; void* prio; void* protocol; int classify; } ;
struct tcf_chain {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_4__ {int (* init ) (struct tcf_proto*) ;int owner; int classify; } ;


 int ENOBUFS ;
 struct tcf_proto* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int kfree (struct tcf_proto*) ;
 struct tcf_proto* kzalloc (int,int ) ;
 int module_put (int ) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 int stub1 (struct tcf_proto*) ;
 TYPE_1__* tcf_proto_lookup_ops (char const*,int,struct netlink_ext_ack*) ;

__attribute__((used)) static struct tcf_proto *tcf_proto_create(const char *kind, u32 protocol,
       u32 prio, struct tcf_chain *chain,
       bool rtnl_held,
       struct netlink_ext_ack *extack)
{
 struct tcf_proto *tp;
 int err;

 tp = kzalloc(sizeof(*tp), GFP_KERNEL);
 if (!tp)
  return ERR_PTR(-ENOBUFS);

 tp->ops = tcf_proto_lookup_ops(kind, rtnl_held, extack);
 if (IS_ERR(tp->ops)) {
  err = PTR_ERR(tp->ops);
  goto errout;
 }
 tp->classify = tp->ops->classify;
 tp->protocol = protocol;
 tp->prio = prio;
 tp->chain = chain;
 spin_lock_init(&tp->lock);
 refcount_set(&tp->refcnt, 1);

 err = tp->ops->init(tp);
 if (err) {
  module_put(tp->ops->owner);
  goto errout;
 }
 return tp;

errout:
 kfree(tp);
 return ERR_PTR(err);
}
