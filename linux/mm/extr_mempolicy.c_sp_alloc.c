
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_node {int dummy; } ;
struct mempolicy {int flags; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mempolicy*) ;
 int MPOL_F_SHARED ;
 struct sp_node* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct sp_node*) ;
 struct mempolicy* mpol_dup (struct mempolicy*) ;
 int sn_cache ;
 int sp_node_init (struct sp_node*,unsigned long,unsigned long,struct mempolicy*) ;

__attribute__((used)) static struct sp_node *sp_alloc(unsigned long start, unsigned long end,
    struct mempolicy *pol)
{
 struct sp_node *n;
 struct mempolicy *newpol;

 n = kmem_cache_alloc(sn_cache, GFP_KERNEL);
 if (!n)
  return ((void*)0);

 newpol = mpol_dup(pol);
 if (IS_ERR(newpol)) {
  kmem_cache_free(sn_cache, n);
  return ((void*)0);
 }
 newpol->flags |= MPOL_F_SHARED;
 sp_node_init(n, start, end, newpol);

 return n;
}
