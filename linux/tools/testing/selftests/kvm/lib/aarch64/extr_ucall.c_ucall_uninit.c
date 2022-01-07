
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int dummy; } ;


 int sync_global_to_guest (struct kvm_vm*,scalar_t__) ;
 scalar_t__ ucall_exit_mmio_addr ;

void ucall_uninit(struct kvm_vm *vm)
{
 ucall_exit_mmio_addr = 0;
 sync_global_to_guest(vm, ucall_exit_mmio_addr);
}
