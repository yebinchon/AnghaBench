
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;


 int VM_FAULT_NOPAGE ;
 int vmf_error (int) ;

__attribute__((used)) static vm_fault_t dax_fault_return(int error)
{
 if (error == 0)
  return VM_FAULT_NOPAGE;
 return vmf_error(error);
}
