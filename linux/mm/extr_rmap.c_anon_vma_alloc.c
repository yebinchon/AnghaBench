
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma {int degree; struct anon_vma* root; struct anon_vma* parent; int refcount; } ;


 int GFP_KERNEL ;
 int anon_vma_cachep ;
 int atomic_set (int *,int) ;
 struct anon_vma* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static inline struct anon_vma *anon_vma_alloc(void)
{
 struct anon_vma *anon_vma;

 anon_vma = kmem_cache_alloc(anon_vma_cachep, GFP_KERNEL);
 if (anon_vma) {
  atomic_set(&anon_vma->refcount, 1);
  anon_vma->degree = 1;
  anon_vma->parent = anon_vma;




  anon_vma->root = anon_vma;
 }

 return anon_vma;
}
