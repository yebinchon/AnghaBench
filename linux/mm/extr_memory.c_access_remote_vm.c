
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int __access_remote_vm (int *,struct mm_struct*,unsigned long,void*,int,unsigned int) ;

int access_remote_vm(struct mm_struct *mm, unsigned long addr,
  void *buf, int len, unsigned int gup_flags)
{
 return __access_remote_vm(((void*)0), mm, addr, buf, len, gup_flags);
}
