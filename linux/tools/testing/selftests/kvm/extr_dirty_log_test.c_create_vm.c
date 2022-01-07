
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kvm_vm {int dummy; } ;
typedef enum vm_guest_mode { ____Placeholder_vm_guest_mode } vm_guest_mode ;


 int DEFAULT_GUEST_PHY_PAGES ;
 int O_RDWR ;
 struct kvm_vm* _vm_create (int,int,int ) ;
 int kvm_vm_elf_load (struct kvm_vm*,int ,int ,int ) ;
 int program_invocation_name ;
 int vm_create_irqchip (struct kvm_vm*) ;
 int vm_vcpu_add_default (struct kvm_vm*,int ,void*) ;

__attribute__((used)) static struct kvm_vm *create_vm(enum vm_guest_mode mode, uint32_t vcpuid,
    uint64_t extra_mem_pages, void *guest_code)
{
 struct kvm_vm *vm;
 uint64_t extra_pg_pages = extra_mem_pages / 512 * 2;

 vm = _vm_create(mode, DEFAULT_GUEST_PHY_PAGES + extra_pg_pages, O_RDWR);
 kvm_vm_elf_load(vm, program_invocation_name, 0, 0);

 vm_create_irqchip(vm);

 vm_vcpu_add_default(vm, vcpuid, guest_code);
 return vm;
}
