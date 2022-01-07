
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_mall_head {int rwork; int exts; int flags; int res; } ;


 int __mall_destroy (struct cls_mall_head*) ;
 int mall_destroy_hw_filter (struct tcf_proto*,struct cls_mall_head*,unsigned long,struct netlink_ext_ack*) ;
 int mall_destroy_work ;
 struct cls_mall_head* rtnl_dereference (int ) ;
 int tc_skip_hw (int ) ;
 scalar_t__ tcf_exts_get_net (int *) ;
 int tcf_queue_work (int *,int ) ;
 int tcf_unbind_filter (struct tcf_proto*,int *) ;

__attribute__((used)) static void mall_destroy(struct tcf_proto *tp, bool rtnl_held,
    struct netlink_ext_ack *extack)
{
 struct cls_mall_head *head = rtnl_dereference(tp->root);

 if (!head)
  return;

 tcf_unbind_filter(tp, &head->res);

 if (!tc_skip_hw(head->flags))
  mall_destroy_hw_filter(tp, head, (unsigned long) head, extack);

 if (tcf_exts_get_net(&head->exts))
  tcf_queue_work(&head->rwork, mall_destroy_work);
 else
  __mall_destroy(head);
}
