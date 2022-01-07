
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ guest_phys_addr; scalar_t__ memory_size; } ;
struct userspace_mem_region {TYPE_1__ region; struct userspace_mem_region* next; } ;
struct kvm_vm {struct userspace_mem_region* userspace_mem_region_head; } ;



__attribute__((used)) static struct userspace_mem_region *
userspace_mem_region_find(struct kvm_vm *vm, uint64_t start, uint64_t end)
{
 struct userspace_mem_region *region;

 for (region = vm->userspace_mem_region_head; region;
  region = region->next) {
  uint64_t existing_start = region->region.guest_phys_addr;
  uint64_t existing_end = region->region.guest_phys_addr
   + region->region.memory_size - 1;
  if (start <= existing_end && end >= existing_start)
   return region;
 }

 return ((void*)0);
}
