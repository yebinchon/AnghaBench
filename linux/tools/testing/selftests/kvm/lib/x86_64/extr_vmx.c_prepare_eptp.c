
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmx_pages {void* eptp; int eptp_gpa; int eptp_hva; } ;
struct kvm_vm {int dummy; } ;


 int addr_gva2gpa (struct kvm_vm*,uintptr_t) ;
 int addr_gva2hva (struct kvm_vm*,uintptr_t) ;
 int getpagesize () ;
 scalar_t__ vm_vaddr_alloc (struct kvm_vm*,int ,int,int ,int ) ;

void prepare_eptp(struct vmx_pages *vmx, struct kvm_vm *vm,
    uint32_t eptp_memslot)
{
 vmx->eptp = (void *)vm_vaddr_alloc(vm, getpagesize(), 0x10000, 0, 0);
 vmx->eptp_hva = addr_gva2hva(vm, (uintptr_t)vmx->eptp);
 vmx->eptp_gpa = addr_gva2gpa(vm, (uintptr_t)vmx->eptp);
}
