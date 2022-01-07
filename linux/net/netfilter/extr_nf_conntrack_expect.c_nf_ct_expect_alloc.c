
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {int use; struct nf_conn* master; } ;
struct nf_conn {int dummy; } ;


 int GFP_ATOMIC ;
 struct nf_conntrack_expect* kmem_cache_alloc (int ,int ) ;
 int nf_ct_expect_cachep ;
 int refcount_set (int *,int) ;

struct nf_conntrack_expect *nf_ct_expect_alloc(struct nf_conn *me)
{
 struct nf_conntrack_expect *new;

 new = kmem_cache_alloc(nf_ct_expect_cachep, GFP_ATOMIC);
 if (!new)
  return ((void*)0);

 new->master = me;
 refcount_set(&new->use, 1);
 return new;
}
