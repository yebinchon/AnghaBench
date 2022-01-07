
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {struct tc_u_common* data; int root; } ;
struct tc_u_hnode {int refcnt; int next; } ;
struct tc_u_common {scalar_t__ refcnt; int handle_idr; int hlist; int hnode; } ;
struct netlink_ext_ack {int dummy; } ;


 int RCU_INIT_POINTER (int ,int ) ;
 int WARN_ON (int ) ;
 int hlist_del (int *) ;
 int idr_destroy (int *) ;
 int kfree (struct tc_u_common*) ;
 int kfree_rcu (struct tc_u_hnode*,int ) ;
 int rcu ;
 struct tc_u_hnode* rtnl_dereference (int ) ;
 int u32_clear_hnode (struct tcf_proto*,struct tc_u_hnode*,struct netlink_ext_ack*) ;
 int u32_destroy_hnode (struct tcf_proto*,struct tc_u_hnode*,struct netlink_ext_ack*) ;

__attribute__((used)) static void u32_destroy(struct tcf_proto *tp, bool rtnl_held,
   struct netlink_ext_ack *extack)
{
 struct tc_u_common *tp_c = tp->data;
 struct tc_u_hnode *root_ht = rtnl_dereference(tp->root);

 WARN_ON(root_ht == ((void*)0));

 if (root_ht && --root_ht->refcnt == 1)
  u32_destroy_hnode(tp, root_ht, extack);

 if (--tp_c->refcnt == 0) {
  struct tc_u_hnode *ht;

  hlist_del(&tp_c->hnode);

  while ((ht = rtnl_dereference(tp_c->hlist)) != ((void*)0)) {
   u32_clear_hnode(tp, ht, extack);
   RCU_INIT_POINTER(tp_c->hlist, ht->next);




   if (--ht->refcnt == 0)
    kfree_rcu(ht, rcu);
  }

  idr_destroy(&tp_c->handle_idr);
  kfree(tp_c);
 }

 tp->data = ((void*)0);
}
