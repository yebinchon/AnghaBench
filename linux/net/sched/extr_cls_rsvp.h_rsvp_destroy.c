
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct rsvp_session {int * ht; int next; } ;
struct rsvp_head {int * ht; int next; } ;
struct rsvp_filter {int next; } ;
struct netlink_ext_ack {int dummy; } ;


 int RCU_INIT_POINTER (int ,int ) ;
 int kfree_rcu (struct rsvp_session*,int ) ;
 int rcu ;
 int rcu_assign_pointer (int ,int ) ;
 int rsvp_delete_filter (struct tcf_proto*,struct rsvp_filter*) ;
 void* rtnl_dereference (int ) ;

__attribute__((used)) static void rsvp_destroy(struct tcf_proto *tp, bool rtnl_held,
    struct netlink_ext_ack *extack)
{
 struct rsvp_head *data = rtnl_dereference(tp->root);
 int h1, h2;

 if (data == ((void*)0))
  return;

 for (h1 = 0; h1 < 256; h1++) {
  struct rsvp_session *s;

  while ((s = rtnl_dereference(data->ht[h1])) != ((void*)0)) {
   RCU_INIT_POINTER(data->ht[h1], s->next);

   for (h2 = 0; h2 <= 16; h2++) {
    struct rsvp_filter *f;

    while ((f = rtnl_dereference(s->ht[h2])) != ((void*)0)) {
     rcu_assign_pointer(s->ht[h2], f->next);
     rsvp_delete_filter(tp, f);
    }
   }
   kfree_rcu(s, rcu);
  }
 }
 kfree_rcu(data, rcu);
}
