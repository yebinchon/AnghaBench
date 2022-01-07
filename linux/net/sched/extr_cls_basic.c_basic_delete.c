
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct netlink_ext_ack {int dummy; } ;
struct basic_head {int flist; int handle_idr; } ;
struct basic_filter {int rwork; int exts; int handle; int res; int link; } ;


 int basic_delete_filter_work ;
 int idr_remove (int *,int ) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 struct basic_head* rtnl_dereference (int ) ;
 int tcf_exts_get_net (int *) ;
 int tcf_queue_work (int *,int ) ;
 int tcf_unbind_filter (struct tcf_proto*,int *) ;

__attribute__((used)) static int basic_delete(struct tcf_proto *tp, void *arg, bool *last,
   bool rtnl_held, struct netlink_ext_ack *extack)
{
 struct basic_head *head = rtnl_dereference(tp->root);
 struct basic_filter *f = arg;

 list_del_rcu(&f->link);
 tcf_unbind_filter(tp, &f->res);
 idr_remove(&head->handle_idr, f->handle);
 tcf_exts_get_net(&f->exts);
 tcf_queue_work(&f->rwork, basic_delete_filter_work);
 *last = list_empty(&head->flist);
 return 0;
}
