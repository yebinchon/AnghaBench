
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma_chain {int vma; } ;


 unsigned long vma_last_pgoff (int ) ;

__attribute__((used)) static inline unsigned long avc_last_pgoff(struct anon_vma_chain *avc)
{
 return vma_last_pgoff(avc->vma);
}
