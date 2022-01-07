
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct kvm_vm {int page_size; int pgd; } ;
struct kvm_sregs {int* crs; } ;
struct kvm_run {int psw_mask; uintptr_t psw_addr; } ;
struct kvm_regs {scalar_t__* gprs; } ;


 int DEFAULT_GUEST_STACK_VADDR_MIN ;
 size_t DEFAULT_STACK_PGS ;
 int TEST_ASSERT (int,char*,int) ;
 size_t getpagesize () ;
 int vcpu_regs_get (struct kvm_vm*,int ,struct kvm_regs*) ;
 int vcpu_regs_set (struct kvm_vm*,int ,struct kvm_regs*) ;
 int vcpu_sregs_get (struct kvm_vm*,int ,struct kvm_sregs*) ;
 int vcpu_sregs_set (struct kvm_vm*,int ,struct kvm_sregs*) ;
 struct kvm_run* vcpu_state (struct kvm_vm*,int ) ;
 scalar_t__ vm_vaddr_alloc (struct kvm_vm*,size_t,int ,int ,int ) ;
 int vm_vcpu_add (struct kvm_vm*,int ) ;

void vm_vcpu_add_default(struct kvm_vm *vm, uint32_t vcpuid, void *guest_code)
{
 size_t stack_size = DEFAULT_STACK_PGS * getpagesize();
 uint64_t stack_vaddr;
 struct kvm_regs regs;
 struct kvm_sregs sregs;
 struct kvm_run *run;

 TEST_ASSERT(vm->page_size == 4096, "Unsupported page size: 0x%x",
      vm->page_size);

 stack_vaddr = vm_vaddr_alloc(vm, stack_size,
         DEFAULT_GUEST_STACK_VADDR_MIN, 0, 0);

 vm_vcpu_add(vm, vcpuid);


 vcpu_regs_get(vm, vcpuid, &regs);
 regs.gprs[15] = stack_vaddr + (DEFAULT_STACK_PGS * getpagesize()) - 160;
 vcpu_regs_set(vm, vcpuid, &regs);

 vcpu_sregs_get(vm, vcpuid, &sregs);
 sregs.crs[0] |= 0x00040000;
 sregs.crs[1] = vm->pgd | 0xf;
 vcpu_sregs_set(vm, vcpuid, &sregs);

 run = vcpu_state(vm, vcpuid);
 run->psw_mask = 0x0400000180000000ULL;
 run->psw_addr = (uintptr_t)guest_code;
}
