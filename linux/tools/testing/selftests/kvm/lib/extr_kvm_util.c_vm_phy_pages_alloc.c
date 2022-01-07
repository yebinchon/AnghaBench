
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_paddr_t ;
typedef int uint32_t ;
struct userspace_mem_region {int unused_phy_pages; } ;
struct kvm_vm {size_t page_size; size_t page_shift; } ;
typedef size_t sparsebit_idx_t ;


 int TEST_ASSERT (int,char*,...) ;
 int abort () ;
 int fprintf (int ,char*,size_t,size_t,int ) ;
 int fputs (char*,int ) ;
 struct userspace_mem_region* memslot2region (struct kvm_vm*,int ) ;
 int sparsebit_clear (int ,size_t) ;
 int sparsebit_is_set (int ,size_t) ;
 size_t sparsebit_next_set (int ,size_t) ;
 int stderr ;
 int vm_dump (int ,struct kvm_vm*,int) ;

vm_paddr_t vm_phy_pages_alloc(struct kvm_vm *vm, size_t num,
         vm_paddr_t paddr_min, uint32_t memslot)
{
 struct userspace_mem_region *region;
 sparsebit_idx_t pg, base;

 TEST_ASSERT(num > 0, "Must allocate at least one page");

 TEST_ASSERT((paddr_min % vm->page_size) == 0, "Min physical address "
  "not divisible by page size.\n"
  "  paddr_min: 0x%lx page_size: 0x%x",
  paddr_min, vm->page_size);

 region = memslot2region(vm, memslot);
 base = pg = paddr_min >> vm->page_shift;

 do {
  for (; pg < base + num; ++pg) {
   if (!sparsebit_is_set(region->unused_phy_pages, pg)) {
    base = pg = sparsebit_next_set(region->unused_phy_pages, pg);
    break;
   }
  }
 } while (pg && pg != base + num);

 if (pg == 0) {
  fprintf(stderr, "No guest physical page available, "
   "paddr_min: 0x%lx page_size: 0x%x memslot: %u\n",
   paddr_min, vm->page_size, memslot);
  fputs("---- vm dump ----\n", stderr);
  vm_dump(stderr, vm, 2);
  abort();
 }

 for (pg = base; pg < base + num; ++pg)
  sparsebit_clear(region->unused_phy_pages, pg);

 return base * vm->page_size;
}
