
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_flags_t ;
struct mm_struct {scalar_t__ total_vm; unsigned long data_vm; } ;
struct TYPE_2__ {int pid; int comm; } ;


 int PAGE_SHIFT ;
 int RLIMIT_AS ;
 int RLIMIT_DATA ;
 TYPE_1__* current ;
 scalar_t__ ignore_rlimit_data ;
 scalar_t__ is_data_mapping (int ) ;
 int pr_warn_once (char*,int ,int ,unsigned long,scalar_t__,char*) ;
 scalar_t__ rlimit (int ) ;
 unsigned long rlimit_max (int ) ;

bool may_expand_vm(struct mm_struct *mm, vm_flags_t flags, unsigned long npages)
{
 if (mm->total_vm + npages > rlimit(RLIMIT_AS) >> PAGE_SHIFT)
  return 0;

 if (is_data_mapping(flags) &&
     mm->data_vm + npages > rlimit(RLIMIT_DATA) >> PAGE_SHIFT) {

  if (rlimit(RLIMIT_DATA) == 0 &&
      mm->data_vm + npages <= rlimit_max(RLIMIT_DATA) >> PAGE_SHIFT)
   return 1;

  pr_warn_once("%s (%d): VmData %lu exceed data ulimit %lu. Update limits%s.\n",
        current->comm, current->pid,
        (mm->data_vm + npages) << PAGE_SHIFT,
        rlimit(RLIMIT_DATA),
        ignore_rlimit_data ? "" : " or use boot option ignore_rlimit_data");

  if (!ignore_rlimit_data)
   return 0;
 }

 return 1;
}
