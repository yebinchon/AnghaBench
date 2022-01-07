
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; int vm_flags; } ;
struct task_struct {int dummy; } ;
struct mm_struct {int mmap_sem; } ;


 unsigned int FOLL_WRITE ;
 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 int copy_from_user_page (struct vm_area_struct*,int *,unsigned long,void*,void*,int) ;
 int copy_to_user_page (struct vm_area_struct*,int *,unsigned long,void*,void*,int) ;
 scalar_t__ down_read_killable (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int up_read (int *) ;

int __access_remote_vm(struct task_struct *tsk, struct mm_struct *mm,
  unsigned long addr, void *buf, int len, unsigned int gup_flags)
{
 struct vm_area_struct *vma;
 int write = gup_flags & FOLL_WRITE;

 if (down_read_killable(&mm->mmap_sem))
  return 0;


 vma = find_vma(mm, addr);
 if (vma) {

  if (addr + len >= vma->vm_end)
   len = vma->vm_end - addr;


  if (write && vma->vm_flags & VM_MAYWRITE)
   copy_to_user_page(vma, ((void*)0), addr,
      (void *) addr, buf, len);
  else if (!write && vma->vm_flags & VM_MAYREAD)
   copy_from_user_page(vma, ((void*)0), addr,
         buf, (void *) addr, len);
  else
   len = 0;
 } else {
  len = 0;
 }

 up_read(&mm->mmap_sem);

 return len;
}
