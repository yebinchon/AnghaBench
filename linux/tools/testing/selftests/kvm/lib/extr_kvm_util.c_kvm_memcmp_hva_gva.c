
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_vaddr_t ;
struct kvm_vm {uintptr_t page_shift; uintptr_t page_size; } ;


 scalar_t__ addr_gva2hva (struct kvm_vm*,scalar_t__) ;
 int assert (int) ;
 int memcmp (void*,void*,size_t) ;

int kvm_memcmp_hva_gva(void *hva, struct kvm_vm *vm, vm_vaddr_t gva, size_t len)
{
 size_t amt;





 for (uintptr_t offset = 0; offset < len; offset += amt) {
  uintptr_t ptr1 = (uintptr_t)hva + offset;





  uintptr_t ptr2 = (uintptr_t)addr_gva2hva(vm, gva + offset);





  amt = len - offset;
  if ((ptr1 >> vm->page_shift) != ((ptr1 + amt) >> vm->page_shift))
   amt = vm->page_size - (ptr1 % vm->page_size);
  if ((ptr2 >> vm->page_shift) != ((ptr2 + amt) >> vm->page_shift))
   amt = vm->page_size - (ptr2 % vm->page_size);

  assert((ptr1 >> vm->page_shift) == ((ptr1 + amt - 1) >> vm->page_shift));
  assert((ptr2 >> vm->page_shift) == ((ptr2 + amt - 1) >> vm->page_shift));






  int ret = memcmp((void *)ptr1, (void *)ptr2, amt);
  if (ret != 0)
   return ret;
 }





 return 0;
}
