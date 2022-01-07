
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {scalar_t__ gdt; } ;
struct kvm_dtable {int limit; scalar_t__ base; } ;


 int KVM_UTIL_MIN_VADDR ;
 int getpagesize () ;
 scalar_t__ vm_vaddr_alloc (struct kvm_vm*,int ,int ,int,int) ;

__attribute__((used)) static void kvm_setup_gdt(struct kvm_vm *vm, struct kvm_dtable *dt, int gdt_memslot,
     int pgd_memslot)
{
 if (!vm->gdt)
  vm->gdt = vm_vaddr_alloc(vm, getpagesize(),
   KVM_UTIL_MIN_VADDR, gdt_memslot, pgd_memslot);

 dt->base = vm->gdt;
 dt->limit = getpagesize();
}
