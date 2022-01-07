
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int flags; } ;
struct userspace_mem_region {TYPE_1__ region; } ;
struct kvm_vm {int fd; } ;


 int KVM_SET_USER_MEMORY_REGION ;
 int TEST_ASSERT (int,char*,int,int ,int ,int ) ;
 int errno ;
 int ioctl (int ,int ,TYPE_1__*) ;
 struct userspace_mem_region* memslot2region (struct kvm_vm*,int ) ;

void vm_mem_region_set_flags(struct kvm_vm *vm, uint32_t slot, uint32_t flags)
{
 int ret;
 struct userspace_mem_region *region;

 region = memslot2region(vm, slot);

 region->region.flags = flags;

 ret = ioctl(vm->fd, KVM_SET_USER_MEMORY_REGION, &region->region);

 TEST_ASSERT(ret == 0, "KVM_SET_USER_MEMORY_REGION IOCTL failed,\n"
  "  rc: %i errno: %i slot: %u flags: 0x%x",
  ret, errno, slot, flags);
}
