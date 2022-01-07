
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct netlink_ext_ack {int dummy; } ;
struct flow_head {int filters; } ;
struct flow_filter {int rwork; int exts; int list; } ;


 int flow_destroy_filter_work ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 struct flow_head* rtnl_dereference (int ) ;
 int tcf_exts_get_net (int *) ;
 int tcf_queue_work (int *,int ) ;

__attribute__((used)) static int flow_delete(struct tcf_proto *tp, void *arg, bool *last,
         bool rtnl_held, struct netlink_ext_ack *extack)
{
 struct flow_head *head = rtnl_dereference(tp->root);
 struct flow_filter *f = arg;

 list_del_rcu(&f->list);
 tcf_exts_get_net(&f->exts);
 tcf_queue_work(&f->rwork, flow_destroy_filter_work);
 *last = list_empty(&head->filters);
 return 0;
}
