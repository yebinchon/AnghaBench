
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;


 int __vma_unlink_common (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,int,struct vm_area_struct*) ;

__attribute__((used)) static inline void __vma_unlink_prev(struct mm_struct *mm,
         struct vm_area_struct *vma,
         struct vm_area_struct *prev)
{
 __vma_unlink_common(mm, vma, prev, 1, vma);
}
