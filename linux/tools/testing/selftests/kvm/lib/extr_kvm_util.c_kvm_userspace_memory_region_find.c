
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kvm_userspace_memory_region {int dummy; } ;
struct userspace_mem_region {struct kvm_userspace_memory_region region; } ;
struct kvm_vm {int dummy; } ;


 struct userspace_mem_region* userspace_mem_region_find (struct kvm_vm*,int ,int ) ;

struct kvm_userspace_memory_region *
kvm_userspace_memory_region_find(struct kvm_vm *vm, uint64_t start,
     uint64_t end)
{
 struct userspace_mem_region *region;

 region = userspace_mem_region_find(vm, start, end);
 if (!region)
  return ((void*)0);

 return &region->region;
}
