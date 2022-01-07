
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int cls_cgroup_delete(struct tcf_proto *tp, void *arg, bool *last,
        bool rtnl_held, struct netlink_ext_ack *extack)
{
 return -EOPNOTSUPP;
}
