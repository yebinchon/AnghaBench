
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct route4_head {int * table; int * ht; } ;
struct route4_filter {int exts; int res; int next; } ;
struct route4_bucket {int * table; int * ht; } ;
struct netlink_ext_ack {int dummy; } ;


 int RCU_INIT_POINTER (int ,struct route4_filter*) ;
 int __route4_delete_filter (struct route4_filter*) ;
 int kfree_rcu (struct route4_head*,int ) ;
 int rcu ;
 int route4_queue_work (struct route4_filter*) ;
 void* rtnl_dereference (int ) ;
 scalar_t__ tcf_exts_get_net (int *) ;
 int tcf_unbind_filter (struct tcf_proto*,int *) ;

__attribute__((used)) static void route4_destroy(struct tcf_proto *tp, bool rtnl_held,
      struct netlink_ext_ack *extack)
{
 struct route4_head *head = rtnl_dereference(tp->root);
 int h1, h2;

 if (head == ((void*)0))
  return;

 for (h1 = 0; h1 <= 256; h1++) {
  struct route4_bucket *b;

  b = rtnl_dereference(head->table[h1]);
  if (b) {
   for (h2 = 0; h2 <= 32; h2++) {
    struct route4_filter *f;

    while ((f = rtnl_dereference(b->ht[h2])) != ((void*)0)) {
     struct route4_filter *next;

     next = rtnl_dereference(f->next);
     RCU_INIT_POINTER(b->ht[h2], next);
     tcf_unbind_filter(tp, &f->res);
     if (tcf_exts_get_net(&f->exts))
      route4_queue_work(f);
     else
      __route4_delete_filter(f);
    }
   }
   RCU_INIT_POINTER(head->table[h1], ((void*)0));
   kfree_rcu(b, rcu);
  }
 }
 kfree_rcu(head, rcu);
}
