
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; struct vm_area_struct* vm_next; struct vm_area_struct* vm_prev; } ;
struct mm_struct {int highest_vm_end; int map_count; int mm_rb; struct vm_area_struct* mmap; } ;


 int vm_end_gap (struct vm_area_struct*) ;
 int vma_gap_update (struct vm_area_struct*) ;
 int vma_rb_erase (struct vm_area_struct*,int *) ;
 int vmacache_invalidate (struct mm_struct*) ;

__attribute__((used)) static void
detach_vmas_to_be_unmapped(struct mm_struct *mm, struct vm_area_struct *vma,
 struct vm_area_struct *prev, unsigned long end)
{
 struct vm_area_struct **insertion_point;
 struct vm_area_struct *tail_vma = ((void*)0);

 insertion_point = (prev ? &prev->vm_next : &mm->mmap);
 vma->vm_prev = ((void*)0);
 do {
  vma_rb_erase(vma, &mm->mm_rb);
  mm->map_count--;
  tail_vma = vma;
  vma = vma->vm_next;
 } while (vma && vma->vm_start < end);
 *insertion_point = vma;
 if (vma) {
  vma->vm_prev = prev;
  vma_gap_update(vma);
 } else
  mm->highest_vm_end = prev ? vm_end_gap(prev) : 0;
 tail_vma->vm_next = ((void*)0);


 vmacache_invalidate(mm);
}
