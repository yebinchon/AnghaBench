
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_flags_t ;
struct file {int dummy; } ;


 int VM_NORESERVE ;
 int VM_SHARED ;
 int VM_WRITE ;
 scalar_t__ is_file_hugepages (struct file*) ;

__attribute__((used)) static inline int accountable_mapping(struct file *file, vm_flags_t vm_flags)
{




 if (file && is_file_hugepages(file))
  return 0;

 return (vm_flags & (VM_NORESERVE | VM_SHARED | VM_WRITE)) == VM_WRITE;
}
