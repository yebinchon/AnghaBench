
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {struct tc_u_common* data; } ;
struct tc_u_knode {int rwork; int exts; int handle; int res; int next; } ;
struct tc_u_hnode {unsigned int divisor; int handle_idr; int * ht; } ;
struct tc_u_common {int knodes; } ;
struct netlink_ext_ack {int dummy; } ;


 int RCU_INIT_POINTER (int ,struct tc_u_knode*) ;
 int idr_remove (int *,int ) ;
 struct tc_u_knode* rtnl_dereference (int ) ;
 scalar_t__ tcf_exts_get_net (int *) ;
 int tcf_queue_work (int *,int ) ;
 int tcf_unbind_filter (struct tcf_proto*,int *) ;
 int u32_delete_key_freepf_work ;
 int u32_destroy_key (struct tc_u_knode*,int) ;
 int u32_remove_hw_knode (struct tcf_proto*,struct tc_u_knode*,struct netlink_ext_ack*) ;

__attribute__((used)) static void u32_clear_hnode(struct tcf_proto *tp, struct tc_u_hnode *ht,
       struct netlink_ext_ack *extack)
{
 struct tc_u_common *tp_c = tp->data;
 struct tc_u_knode *n;
 unsigned int h;

 for (h = 0; h <= ht->divisor; h++) {
  while ((n = rtnl_dereference(ht->ht[h])) != ((void*)0)) {
   RCU_INIT_POINTER(ht->ht[h],
      rtnl_dereference(n->next));
   tp_c->knodes--;
   tcf_unbind_filter(tp, &n->res);
   u32_remove_hw_knode(tp, n, extack);
   idr_remove(&ht->handle_idr, n->handle);
   if (tcf_exts_get_net(&n->exts))
    tcf_queue_work(&n->rwork, u32_delete_key_freepf_work);
   else
    u32_destroy_key(n, 1);
  }
 }
}
