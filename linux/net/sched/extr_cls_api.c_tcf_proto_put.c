
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int refcnt; } ;
struct netlink_ext_ack {int dummy; } ;


 scalar_t__ refcount_dec_and_test (int *) ;
 int tcf_proto_destroy (struct tcf_proto*,int,int,struct netlink_ext_ack*) ;

__attribute__((used)) static void tcf_proto_put(struct tcf_proto *tp, bool rtnl_held,
     struct netlink_ext_ack *extack)
{
 if (refcount_dec_and_test(&tp->refcnt))
  tcf_proto_destroy(tp, rtnl_held, 1, extack);
}
