
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct TYPE_2__ {int guest_phys_addr; int memory_size; } ;
struct userspace_mem_region {TYPE_1__ region; scalar_t__ host_mem; struct userspace_mem_region* next; } ;
struct kvm_vm {struct userspace_mem_region* userspace_mem_region_head; } ;


 int TEST_ASSERT (int,char*,int) ;

void *addr_gpa2hva(struct kvm_vm *vm, vm_paddr_t gpa)
{
 struct userspace_mem_region *region;
 for (region = vm->userspace_mem_region_head; region;
      region = region->next) {
  if ((gpa >= region->region.guest_phys_addr)
   && (gpa <= (region->region.guest_phys_addr
    + region->region.memory_size - 1)))
   return (void *) ((uintptr_t) region->host_mem
    + (gpa - region->region.guest_phys_addr));
 }

 TEST_ASSERT(0, "No vm physical memory at 0x%lx", gpa);
 return ((void*)0);
}
