
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int flags; } ;


 int VM_UNINITIALIZED ;
 int smp_wmb () ;

__attribute__((used)) static void clear_vm_uninitialized_flag(struct vm_struct *vm)
{





 smp_wmb();
 vm->flags &= ~VM_UNINITIALIZED;
}
