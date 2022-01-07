
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int data ;


 int EIO ;
 int FOLL_FORCE ;
 int FOLL_WRITE ;
 int ptrace_access_vm (struct task_struct*,unsigned long,unsigned long*,int,int) ;

int generic_ptrace_pokedata(struct task_struct *tsk, unsigned long addr,
       unsigned long data)
{
 int copied;

 copied = ptrace_access_vm(tsk, addr, &data, sizeof(data),
   FOLL_FORCE | FOLL_WRITE);
 return (copied == sizeof(data)) ? 0 : -EIO;
}
