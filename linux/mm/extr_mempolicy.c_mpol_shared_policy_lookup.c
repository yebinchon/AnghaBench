
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sp_node {struct mempolicy* policy; } ;
struct TYPE_2__ {int rb_node; } ;
struct shared_policy {int lock; TYPE_1__ root; } ;
struct mempolicy {int dummy; } ;


 int mpol_get (struct mempolicy*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct sp_node* sp_lookup (struct shared_policy*,unsigned long,unsigned long) ;

struct mempolicy *
mpol_shared_policy_lookup(struct shared_policy *sp, unsigned long idx)
{
 struct mempolicy *pol = ((void*)0);
 struct sp_node *sn;

 if (!sp->root.rb_node)
  return ((void*)0);
 read_lock(&sp->lock);
 sn = sp_lookup(sp, idx, idx+1);
 if (sn) {
  mpol_get(sn->policy);
  pol = sn->policy;
 }
 read_unlock(&sp->lock);
 return pol;
}
