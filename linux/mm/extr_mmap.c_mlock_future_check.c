
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {scalar_t__ locked_vm; } ;


 int CAP_IPC_LOCK ;
 int EAGAIN ;
 unsigned long PAGE_SHIFT ;
 int RLIMIT_MEMLOCK ;
 unsigned long VM_LOCKED ;
 int capable (int ) ;
 unsigned long rlimit (int ) ;

__attribute__((used)) static inline int mlock_future_check(struct mm_struct *mm,
         unsigned long flags,
         unsigned long len)
{
 unsigned long locked, lock_limit;


 if (flags & VM_LOCKED) {
  locked = len >> PAGE_SHIFT;
  locked += mm->locked_vm;
  lock_limit = rlimit(RLIMIT_MEMLOCK);
  lock_limit >>= PAGE_SHIFT;
  if (locked > lock_limit && !capable(CAP_IPC_LOCK))
   return -EAGAIN;
 }
 return 0;
}
