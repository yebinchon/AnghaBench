
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 TYPE_1__* current ;
 int do_munmap (struct mm_struct*,unsigned long,size_t,int *) ;
 int down_write (int *) ;
 int up_write (int *) ;

int vm_munmap(unsigned long addr, size_t len)
{
 struct mm_struct *mm = current->mm;
 int ret;

 down_write(&mm->mmap_sem);
 ret = do_munmap(mm, addr, len, ((void*)0));
 up_write(&mm->mmap_sem);
 return ret;
}
