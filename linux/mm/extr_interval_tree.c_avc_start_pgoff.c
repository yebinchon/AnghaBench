
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma_chain {int vma; } ;


 unsigned long vma_start_pgoff (int ) ;

__attribute__((used)) static inline unsigned long avc_start_pgoff(struct anon_vma_chain *avc)
{
 return vma_start_pgoff(avc->vma);
}
