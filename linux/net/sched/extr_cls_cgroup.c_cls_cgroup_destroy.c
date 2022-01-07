
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_cgroup_head {int rwork; int exts; } ;


 int __cls_cgroup_destroy (struct cls_cgroup_head*) ;
 int cls_cgroup_destroy_work ;
 struct cls_cgroup_head* rtnl_dereference (int ) ;
 scalar_t__ tcf_exts_get_net (int *) ;
 int tcf_queue_work (int *,int ) ;

__attribute__((used)) static void cls_cgroup_destroy(struct tcf_proto *tp, bool rtnl_held,
          struct netlink_ext_ack *extack)
{
 struct cls_cgroup_head *head = rtnl_dereference(tp->root);


 if (head) {
  if (tcf_exts_get_net(&head->exts))
   tcf_queue_work(&head->rwork, cls_cgroup_destroy_work);
  else
   __cls_cgroup_destroy(head);
 }
}
