
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {TYPE_1__* ops; int chain; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int owner; int (* destroy ) (struct tcf_proto*,int,struct netlink_ext_ack*) ;} ;


 int kfree_rcu (struct tcf_proto*,int ) ;
 int module_put (int ) ;
 int rcu ;
 int stub1 (struct tcf_proto*,int,struct netlink_ext_ack*) ;
 int tcf_chain_put (int ) ;
 int tcf_proto_signal_destroyed (int ,struct tcf_proto*) ;

__attribute__((used)) static void tcf_proto_destroy(struct tcf_proto *tp, bool rtnl_held,
         bool sig_destroy, struct netlink_ext_ack *extack)
{
 tp->ops->destroy(tp, rtnl_held, extack);
 if (sig_destroy)
  tcf_proto_signal_destroyed(tp->chain, tp);
 tcf_chain_put(tp->chain);
 module_put(tp->ops->owner);
 kfree_rcu(tp, rcu);
}
