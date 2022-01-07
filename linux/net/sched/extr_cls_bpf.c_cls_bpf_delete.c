
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_bpf_head {int plist; } ;


 int __cls_bpf_delete (struct tcf_proto*,void*,struct netlink_ext_ack*) ;
 int list_empty (int *) ;
 struct cls_bpf_head* rtnl_dereference (int ) ;

__attribute__((used)) static int cls_bpf_delete(struct tcf_proto *tp, void *arg, bool *last,
     bool rtnl_held, struct netlink_ext_ack *extack)
{
 struct cls_bpf_head *head = rtnl_dereference(tp->root);

 __cls_bpf_delete(tp, arg, extack);
 *last = list_empty(&head->plist);
 return 0;
}
