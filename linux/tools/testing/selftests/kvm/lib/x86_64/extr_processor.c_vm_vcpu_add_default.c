
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_vaddr_t ;
typedef int uint32_t ;
struct kvm_vm {int dummy; } ;
struct kvm_regs {int rflags; unsigned long rip; scalar_t__ rsp; } ;
struct kvm_mp_state {scalar_t__ mp_state; } ;


 int DEFAULT_GUEST_STACK_VADDR_MIN ;
 int DEFAULT_STACK_PGS ;
 int getpagesize () ;
 int vcpu_regs_get (struct kvm_vm*,int ,struct kvm_regs*) ;
 int vcpu_regs_set (struct kvm_vm*,int ,struct kvm_regs*) ;
 int vcpu_set_mp_state (struct kvm_vm*,int ,struct kvm_mp_state*) ;
 int vcpu_setup (struct kvm_vm*,int ,int ,int ) ;
 scalar_t__ vm_vaddr_alloc (struct kvm_vm*,int,int ,int ,int ) ;
 int vm_vcpu_add (struct kvm_vm*,int ) ;

void vm_vcpu_add_default(struct kvm_vm *vm, uint32_t vcpuid, void *guest_code)
{
 struct kvm_mp_state mp_state;
 struct kvm_regs regs;
 vm_vaddr_t stack_vaddr;
 stack_vaddr = vm_vaddr_alloc(vm, DEFAULT_STACK_PGS * getpagesize(),
         DEFAULT_GUEST_STACK_VADDR_MIN, 0, 0);


 vm_vcpu_add(vm, vcpuid);
 vcpu_setup(vm, vcpuid, 0, 0);


 vcpu_regs_get(vm, vcpuid, &regs);
 regs.rflags = regs.rflags | 0x2;
 regs.rsp = stack_vaddr + (DEFAULT_STACK_PGS * getpagesize());
 regs.rip = (unsigned long) guest_code;
 vcpu_regs_set(vm, vcpuid, &regs);


 mp_state.mp_state = 0;
 vcpu_set_mp_state(vm, vcpuid, &mp_state);
}
