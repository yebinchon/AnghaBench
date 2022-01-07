
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_flags_t ;


 int VM_EXEC ;
 int VM_STACK ;
 int VM_WRITE ;

__attribute__((used)) static inline bool is_exec_mapping(vm_flags_t flags)
{
 return (flags & (VM_EXEC | VM_WRITE | VM_STACK)) == VM_EXEC;
}
