
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vm {int mode; int pgd; } ;
struct TYPE_2__ {scalar_t__ limit; } ;
struct kvm_sregs {int cr0; int cr4; int efer; int cr3; int tr; int es; int ds; int cs; int ldt; int gdt; TYPE_1__ idt; } ;


 int EFER_LMA ;
 int EFER_LME ;
 int EFER_NX ;
 int TEST_ASSERT (int,char*,int) ;

 int X86_CR0_NE ;
 int X86_CR0_PE ;
 int X86_CR0_PG ;
 int X86_CR4_OSFXSR ;
 int X86_CR4_PAE ;
 int kvm_seg_set_kernel_code_64bit (struct kvm_vm*,int,int *) ;
 int kvm_seg_set_kernel_data_64bit (struct kvm_vm*,int,int *) ;
 int kvm_seg_set_unusable (int *) ;
 int kvm_setup_gdt (struct kvm_vm*,int *,int,int) ;
 int kvm_setup_tss_64bit (struct kvm_vm*,int *,int,int,int) ;
 int vcpu_sregs_get (struct kvm_vm*,int,struct kvm_sregs*) ;
 int vcpu_sregs_set (struct kvm_vm*,int,struct kvm_sregs*) ;

__attribute__((used)) static void vcpu_setup(struct kvm_vm *vm, int vcpuid, int pgd_memslot, int gdt_memslot)
{
 struct kvm_sregs sregs;


 vcpu_sregs_get(vm, vcpuid, &sregs);

 sregs.idt.limit = 0;

 kvm_setup_gdt(vm, &sregs.gdt, gdt_memslot, pgd_memslot);

 switch (vm->mode) {
 case 128:
  sregs.cr0 = X86_CR0_PE | X86_CR0_NE | X86_CR0_PG;
  sregs.cr4 |= X86_CR4_PAE | X86_CR4_OSFXSR;
  sregs.efer |= (EFER_LME | EFER_LMA | EFER_NX);

  kvm_seg_set_unusable(&sregs.ldt);
  kvm_seg_set_kernel_code_64bit(vm, 0x8, &sregs.cs);
  kvm_seg_set_kernel_data_64bit(vm, 0x10, &sregs.ds);
  kvm_seg_set_kernel_data_64bit(vm, 0x10, &sregs.es);
  kvm_setup_tss_64bit(vm, &sregs.tr, 0x18, gdt_memslot, pgd_memslot);
  break;

 default:
  TEST_ASSERT(0, "Unknown guest mode, mode: 0x%x", vm->mode);
 }

 sregs.cr3 = vm->pgd;
 vcpu_sregs_set(vm, vcpuid, &sregs);
}
