
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct netlink_ext_ack {int dummy; } ;
struct fw_head {int * ht; } ;
struct fw_filter {int rwork; int exts; int res; int next; } ;


 int HTSIZE ;
 int RCU_INIT_POINTER (int ,void*) ;
 int __fw_delete_filter (struct fw_filter*) ;
 int fw_delete_filter_work ;
 int kfree_rcu (struct fw_head*,int ) ;
 int rcu ;
 void* rtnl_dereference (int ) ;
 scalar_t__ tcf_exts_get_net (int *) ;
 int tcf_queue_work (int *,int ) ;
 int tcf_unbind_filter (struct tcf_proto*,int *) ;

__attribute__((used)) static void fw_destroy(struct tcf_proto *tp, bool rtnl_held,
         struct netlink_ext_ack *extack)
{
 struct fw_head *head = rtnl_dereference(tp->root);
 struct fw_filter *f;
 int h;

 if (head == ((void*)0))
  return;

 for (h = 0; h < HTSIZE; h++) {
  while ((f = rtnl_dereference(head->ht[h])) != ((void*)0)) {
   RCU_INIT_POINTER(head->ht[h],
      rtnl_dereference(f->next));
   tcf_unbind_filter(tp, &f->res);
   if (tcf_exts_get_net(&f->exts))
    tcf_queue_work(&f->rwork, fw_delete_filter_work);
   else
    __fw_delete_filter(f);
  }
 }
 kfree_rcu(head, rcu);
}
