
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_node {int policy; } ;


 int kmem_cache_free (int ,struct sp_node*) ;
 int mpol_put (int ) ;
 int sn_cache ;

__attribute__((used)) static void sp_free(struct sp_node *n)
{
 mpol_put(n->policy);
 kmem_cache_free(sn_cache, n);
}
