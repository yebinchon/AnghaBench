
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_flags_t ;
struct mm_struct {long total_vm; long exec_vm; long stack_vm; long data_vm; } ;


 scalar_t__ is_data_mapping (int ) ;
 scalar_t__ is_exec_mapping (int ) ;
 scalar_t__ is_stack_mapping (int ) ;

void vm_stat_account(struct mm_struct *mm, vm_flags_t flags, long npages)
{
 mm->total_vm += npages;

 if (is_exec_mapping(flags))
  mm->exec_vm += npages;
 else if (is_stack_mapping(flags))
  mm->stack_vm += npages;
 else if (is_data_mapping(flags))
  mm->data_vm += npages;
}
