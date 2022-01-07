
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_flags_t ;


 int VM_MAYWRITE ;
 int VM_SHARED ;

__attribute__((used)) static inline bool is_cow_mapping(vm_flags_t flags)
{
 return (flags & (VM_SHARED | VM_MAYWRITE)) == VM_MAYWRITE;
}
