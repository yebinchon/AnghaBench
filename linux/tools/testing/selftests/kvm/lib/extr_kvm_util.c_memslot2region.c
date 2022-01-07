
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ slot; } ;
struct userspace_mem_region {TYPE_1__ region; struct userspace_mem_region* next; } ;
struct kvm_vm {struct userspace_mem_region* userspace_mem_region_head; } ;


 int TEST_ASSERT (int,char*) ;
 int fprintf (int ,char*,scalar_t__) ;
 int fputs (char*,int ) ;
 int stderr ;
 int vm_dump (int ,struct kvm_vm*,int) ;

struct userspace_mem_region *
memslot2region(struct kvm_vm *vm, uint32_t memslot)
{
 struct userspace_mem_region *region;

 for (region = vm->userspace_mem_region_head; region;
  region = region->next) {
  if (region->region.slot == memslot)
   break;
 }
 if (region == ((void*)0)) {
  fprintf(stderr, "No mem region with the requested slot found,\n"
   "  requested slot: %u\n", memslot);
  fputs("---- vm dump ----\n", stderr);
  vm_dump(stderr, vm, 2);
  TEST_ASSERT(0, "Mem region not found");
 }

 return region;
}
