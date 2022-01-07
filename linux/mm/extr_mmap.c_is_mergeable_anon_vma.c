
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int anon_vma_chain; } ;
struct anon_vma {int dummy; } ;


 scalar_t__ list_is_singular (int *) ;

__attribute__((used)) static inline int is_mergeable_anon_vma(struct anon_vma *anon_vma1,
     struct anon_vma *anon_vma2,
     struct vm_area_struct *vma)
{




 if ((!anon_vma1 || !anon_vma2) && (!vma ||
  list_is_singular(&vma->anon_vma_chain)))
  return 1;
 return anon_vma1 == anon_vma2;
}
