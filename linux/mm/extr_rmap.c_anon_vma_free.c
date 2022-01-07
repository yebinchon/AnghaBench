
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct anon_vma {TYPE_1__* root; int refcount; } ;
struct TYPE_2__ {int rwsem; } ;


 int VM_BUG_ON (int ) ;
 int anon_vma_cachep ;
 int anon_vma_lock_write (struct anon_vma*) ;
 int anon_vma_unlock_write (struct anon_vma*) ;
 int atomic_read (int *) ;
 int kmem_cache_free (int ,struct anon_vma*) ;
 int might_sleep () ;
 scalar_t__ rwsem_is_locked (int *) ;

__attribute__((used)) static inline void anon_vma_free(struct anon_vma *anon_vma)
{
 VM_BUG_ON(atomic_read(&anon_vma->refcount));
 might_sleep();
 if (rwsem_is_locked(&anon_vma->root->rwsem)) {
  anon_vma_lock_write(anon_vma);
  anon_vma_unlock_write(anon_vma);
 }

 kmem_cache_free(anon_vma_cachep, anon_vma);
}
