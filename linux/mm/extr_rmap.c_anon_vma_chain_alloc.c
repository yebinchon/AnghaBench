
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma_chain {int dummy; } ;
typedef int gfp_t ;


 int anon_vma_chain_cachep ;
 struct anon_vma_chain* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static inline struct anon_vma_chain *anon_vma_chain_alloc(gfp_t gfp)
{
 return kmem_cache_alloc(anon_vma_chain_cachep, gfp);
}
