
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_vaddr_t ;
typedef scalar_t__ vm_paddr_t ;
struct kvm_vm {int dummy; } ;


 scalar_t__ kvm_userspace_memory_region_find (struct kvm_vm*,scalar_t__,scalar_t__) ;
 int sync_global_to_guest (struct kvm_vm*,int *) ;
 int * ucall_exit_mmio_addr ;
 int virt_pg_map (struct kvm_vm*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static bool ucall_mmio_init(struct kvm_vm *vm, vm_paddr_t gpa)
{
 if (kvm_userspace_memory_region_find(vm, gpa, gpa + 1))
  return 0;

 virt_pg_map(vm, gpa, gpa, 0);

 ucall_exit_mmio_addr = (vm_vaddr_t *)gpa;
 sync_global_to_guest(vm, ucall_exit_mmio_addr);

 return 1;
}
