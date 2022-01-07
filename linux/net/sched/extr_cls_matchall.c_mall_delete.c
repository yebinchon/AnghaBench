
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_mall_head {int deleting; } ;


 struct cls_mall_head* rtnl_dereference (int ) ;

__attribute__((used)) static int mall_delete(struct tcf_proto *tp, void *arg, bool *last,
         bool rtnl_held, struct netlink_ext_ack *extack)
{
 struct cls_mall_head *head = rtnl_dereference(tp->root);

 head->deleting = 1;
 *last = 1;
 return 0;
}
