
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_pgoff; } ;


 unsigned long vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static inline unsigned long vma_last_pgoff(struct vm_area_struct *v)
{
 return v->vm_pgoff + vma_pages(v) - 1;
}
