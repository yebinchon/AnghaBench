
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {int dummy; } ;


 int BUG () ;

__attribute__((used)) static vm_fault_t hugetlb_vm_op_fault(struct vm_fault *vmf)
{
 BUG();
 return 0;
}
