
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int mmap_sem; } ;


 int CAP_IPC_LOCK ;
 int __account_locked_vm (struct mm_struct*,unsigned long,int,int ,int ) ;
 int capable (int ) ;
 int current ;
 int down_write (int *) ;
 int up_write (int *) ;

int account_locked_vm(struct mm_struct *mm, unsigned long pages, bool inc)
{
 int ret;

 if (pages == 0 || !mm)
  return 0;

 down_write(&mm->mmap_sem);
 ret = __account_locked_vm(mm, pages, inc, current,
      capable(CAP_IPC_LOCK));
 up_write(&mm->mmap_sem);

 return ret;
}
