
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned long start_brk; unsigned long brk; } ;


 unsigned long ELF_PAGEALIGN (unsigned long) ;
 int PROT_EXEC ;
 int VM_EXEC ;
 TYPE_2__* current ;
 int vm_brk_flags (unsigned long,unsigned long,int ) ;

__attribute__((used)) static int set_brk(unsigned long start, unsigned long end, int prot)
{
 start = ELF_PAGEALIGN(start);
 end = ELF_PAGEALIGN(end);
 if (end > start) {





  int error = vm_brk_flags(start, end - start,
    prot & PROT_EXEC ? VM_EXEC : 0);
  if (error)
   return error;
 }
 current->mm->start_brk = current->mm->brk = end;
 return 0;
}
