
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tc_u32_sel {int nkeys; } ;
struct tc_u_knode {int exts; struct tc_u32_sel sel; int pcpu_success; int mask; int val; int pf; struct tc_u_hnode* ht_down; int flags; int res; int fshift; int ifindex; struct tc_u_hnode* ht_up; int handle; struct tc_u_hnode* next; } ;
struct tc_u_hnode {int refcnt; } ;
struct tc_u32_key {int dummy; } ;
struct net {int dummy; } ;


 int GFP_KERNEL ;
 int RCU_INIT_POINTER (struct tc_u_hnode*,struct tc_u_hnode*) ;
 int TCA_U32_ACT ;
 int TCA_U32_POLICE ;
 int keys ;
 int kfree (struct tc_u_knode*) ;
 struct tc_u_knode* kzalloc (int,int ) ;
 int memcpy (struct tc_u32_sel*,struct tc_u32_sel*,int ) ;
 struct tc_u_hnode* rtnl_dereference (struct tc_u_hnode*) ;
 int struct_size (struct tc_u32_sel*,int ,int) ;
 scalar_t__ tcf_exts_init (int *,struct net*,int ,int ) ;

__attribute__((used)) static struct tc_u_knode *u32_init_knode(struct net *net, struct tcf_proto *tp,
      struct tc_u_knode *n)
{
 struct tc_u_hnode *ht = rtnl_dereference(n->ht_down);
 struct tc_u32_sel *s = &n->sel;
 struct tc_u_knode *new;

 new = kzalloc(sizeof(*n) + s->nkeys*sizeof(struct tc_u32_key),
        GFP_KERNEL);

 if (!new)
  return ((void*)0);

 RCU_INIT_POINTER(new->next, n->next);
 new->handle = n->handle;
 RCU_INIT_POINTER(new->ht_up, n->ht_up);

 new->ifindex = n->ifindex;
 new->fshift = n->fshift;
 new->res = n->res;
 new->flags = n->flags;
 RCU_INIT_POINTER(new->ht_down, ht);


 if (ht)
  ht->refcnt++;
 memcpy(&new->sel, s, struct_size(s, keys, s->nkeys));

 if (tcf_exts_init(&new->exts, net, TCA_U32_ACT, TCA_U32_POLICE)) {
  kfree(new);
  return ((void*)0);
 }

 return new;
}
