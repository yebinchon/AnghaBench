
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_bpf_prog {int rwork; int exts; int res; int link; int handle; } ;
struct cls_bpf_head {int handle_idr; } ;


 int __cls_bpf_delete_prog (struct cls_bpf_prog*) ;
 int cls_bpf_delete_prog_work ;
 int cls_bpf_stop_offload (struct tcf_proto*,struct cls_bpf_prog*,struct netlink_ext_ack*) ;
 int idr_remove (int *,int ) ;
 int list_del_rcu (int *) ;
 struct cls_bpf_head* rtnl_dereference (int ) ;
 scalar_t__ tcf_exts_get_net (int *) ;
 int tcf_queue_work (int *,int ) ;
 int tcf_unbind_filter (struct tcf_proto*,int *) ;

__attribute__((used)) static void __cls_bpf_delete(struct tcf_proto *tp, struct cls_bpf_prog *prog,
        struct netlink_ext_ack *extack)
{
 struct cls_bpf_head *head = rtnl_dereference(tp->root);

 idr_remove(&head->handle_idr, prog->handle);
 cls_bpf_stop_offload(tp, prog, extack);
 list_del_rcu(&prog->link);
 tcf_unbind_filter(tp, &prog->res);
 if (tcf_exts_get_net(&prog->exts))
  tcf_queue_work(&prog->rwork, cls_bpf_delete_prog_work);
 else
  __cls_bpf_delete_prog(prog);
}
