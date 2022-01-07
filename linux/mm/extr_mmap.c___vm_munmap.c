
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int EINTR ;
 int LIST_HEAD (int ) ;
 int __do_munmap (struct mm_struct*,unsigned long,size_t,int *,int) ;
 TYPE_1__* current ;
 scalar_t__ down_write_killable (int *) ;
 int uf ;
 int up_read (int *) ;
 int up_write (int *) ;
 int userfaultfd_unmap_complete (struct mm_struct*,int *) ;

__attribute__((used)) static int __vm_munmap(unsigned long start, size_t len, bool downgrade)
{
 int ret;
 struct mm_struct *mm = current->mm;
 LIST_HEAD(uf);

 if (down_write_killable(&mm->mmap_sem))
  return -EINTR;

 ret = __do_munmap(mm, start, len, &uf, downgrade);





 if (ret == 1) {
  up_read(&mm->mmap_sem);
  ret = 0;
 } else
  up_write(&mm->mmap_sem);

 userfaultfd_unmap_complete(mm, &uf);
 return ret;
}
