
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kvm_vm {int dummy; } ;


 int DEFAULT_GUEST_PHY_PAGES ;
 int O_RDWR ;
 int VM_MODE_DEFAULT ;
 int kvm_vm_elf_load (struct kvm_vm*,int ,int ,int ) ;
 int program_invocation_name ;
 struct kvm_vm* vm_create (int ,int,int ) ;
 int vm_vcpu_add_default (struct kvm_vm*,int ,void*) ;

struct kvm_vm *vm_create_default(uint32_t vcpuid, uint64_t extra_mem_pages,
     void *guest_code)
{





 uint64_t extra_pg_pages = extra_mem_pages / 256 * 2;
 struct kvm_vm *vm;

 vm = vm_create(VM_MODE_DEFAULT,
         DEFAULT_GUEST_PHY_PAGES + extra_pg_pages, O_RDWR);

 kvm_vm_elf_load(vm, program_invocation_name, 0, 0);
 vm_vcpu_add_default(vm, vcpuid, guest_code);

 return vm;
}
