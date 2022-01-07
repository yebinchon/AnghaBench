
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_u_knode {scalar_t__ refcnt; int pcpu_success; int pf; int exts; int ht_down; } ;
struct tc_u_hnode {scalar_t__ refcnt; int pcpu_success; int pf; int exts; int ht_down; } ;


 int free_percpu (int ) ;
 int kfree (struct tc_u_knode*) ;
 struct tc_u_knode* rtnl_dereference (int ) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static int u32_destroy_key(struct tc_u_knode *n, bool free_pf)
{
 struct tc_u_hnode *ht = rtnl_dereference(n->ht_down);

 tcf_exts_destroy(&n->exts);
 tcf_exts_put_net(&n->exts);
 if (ht && --ht->refcnt == 0)
  kfree(ht);
 kfree(n);
 return 0;
}
