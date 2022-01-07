
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long EINTR ;
 int LIST_HEAD (int ) ;
 TYPE_1__* current ;
 unsigned long do_mmap_pgoff (struct file*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long*,int *) ;
 scalar_t__ down_write_killable (int *) ;
 int mm_populate (unsigned long,unsigned long) ;
 unsigned long security_mmap_file (struct file*,unsigned long,unsigned long) ;
 int uf ;
 int up_write (int *) ;
 int userfaultfd_unmap_complete (struct mm_struct*,int *) ;

unsigned long vm_mmap_pgoff(struct file *file, unsigned long addr,
 unsigned long len, unsigned long prot,
 unsigned long flag, unsigned long pgoff)
{
 unsigned long ret;
 struct mm_struct *mm = current->mm;
 unsigned long populate;
 LIST_HEAD(uf);

 ret = security_mmap_file(file, prot, flag);
 if (!ret) {
  if (down_write_killable(&mm->mmap_sem))
   return -EINTR;
  ret = do_mmap_pgoff(file, addr, len, prot, flag, pgoff,
        &populate, &uf);
  up_write(&mm->mmap_sem);
  userfaultfd_unmap_complete(mm, &uf);
  if (populate)
   mm_populate(ret, populate);
 }
 return ret;
}
