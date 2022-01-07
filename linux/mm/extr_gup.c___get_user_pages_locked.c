
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct task_struct {int dummy; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;


 long EFAULT ;
 unsigned int FOLL_FORCE ;
 unsigned int FOLL_WRITE ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 int VM_IO ;
 unsigned long VM_MAYREAD ;
 unsigned long VM_MAYWRITE ;
 int VM_PFNMAP ;
 unsigned long VM_READ ;
 unsigned long VM_WRITE ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int get_page (struct page*) ;
 struct page* virt_to_page (unsigned long) ;

__attribute__((used)) static long __get_user_pages_locked(struct task_struct *tsk,
  struct mm_struct *mm, unsigned long start,
  unsigned long nr_pages, struct page **pages,
  struct vm_area_struct **vmas, int *locked,
  unsigned int foll_flags)
{
 struct vm_area_struct *vma;
 unsigned long vm_flags;
 int i;




 vm_flags = (foll_flags & FOLL_WRITE) ?
   (VM_WRITE | VM_MAYWRITE) : (VM_READ | VM_MAYREAD);
 vm_flags &= (foll_flags & FOLL_FORCE) ?
   (VM_MAYREAD | VM_MAYWRITE) : (VM_READ | VM_WRITE);

 for (i = 0; i < nr_pages; i++) {
  vma = find_vma(mm, start);
  if (!vma)
   goto finish_or_fault;


  if ((vma->vm_flags & (VM_IO | VM_PFNMAP)) ||
      !(vm_flags & vma->vm_flags))
   goto finish_or_fault;

  if (pages) {
   pages[i] = virt_to_page(start);
   if (pages[i])
    get_page(pages[i]);
  }
  if (vmas)
   vmas[i] = vma;
  start = (start + PAGE_SIZE) & PAGE_MASK;
 }

 return i;

finish_or_fault:
 return i ? : -EFAULT;
}
