
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_vaddr_t ;
typedef int uint64_t ;
struct kvm_vm {size_t page_size; size_t page_shift; int vpages_mapped; int vpages_valid; } ;


 int TEST_ASSERT (int,char*,int,...) ;
 int sparsebit_is_clear_num (int ,int,int) ;
 int sparsebit_is_set_num (int ,int,int) ;
 int sparsebit_next_clear_num (int ,int,int) ;
 int sparsebit_next_set_num (int ,int,int) ;

__attribute__((used)) static vm_vaddr_t vm_vaddr_unused_gap(struct kvm_vm *vm, size_t sz,
          vm_vaddr_t vaddr_min)
{
 uint64_t pages = (sz + vm->page_size - 1) >> vm->page_shift;


 uint64_t pgidx_start = (vaddr_min + vm->page_size - 1) >> vm->page_shift;
 if ((pgidx_start * vm->page_size) < vaddr_min)
  goto no_va_found;


 if (!sparsebit_is_set_num(vm->vpages_valid,
  pgidx_start, pages))
  pgidx_start = sparsebit_next_set_num(vm->vpages_valid,
   pgidx_start, pages);
 do {






  if (sparsebit_is_clear_num(vm->vpages_mapped,
   pgidx_start, pages))
   goto va_found;
  pgidx_start = sparsebit_next_clear_num(vm->vpages_mapped,
   pgidx_start, pages);
  if (pgidx_start == 0)
   goto no_va_found;





  if (!sparsebit_is_set_num(vm->vpages_valid,
   pgidx_start, pages)) {
   pgidx_start = sparsebit_next_set_num(
    vm->vpages_valid, pgidx_start, pages);
   if (pgidx_start == 0)
    goto no_va_found;
  }
 } while (pgidx_start != 0);

no_va_found:
 TEST_ASSERT(0, "No vaddr of specified pages available, "
  "pages: 0x%lx", pages);


 return -1;

va_found:
 TEST_ASSERT(sparsebit_is_set_num(vm->vpages_valid,
  pgidx_start, pages),
  "Unexpected, invalid virtual page index range,\n"
  "  pgidx_start: 0x%lx\n"
  "  pages: 0x%lx",
  pgidx_start, pages);
 TEST_ASSERT(sparsebit_is_clear_num(vm->vpages_mapped,
  pgidx_start, pages),
  "Unexpected, pages already mapped,\n"
  "  pgidx_start: 0x%lx\n"
  "  pages: 0x%lx",
  pgidx_start, pages);

 return pgidx_start * vm->page_size;
}
