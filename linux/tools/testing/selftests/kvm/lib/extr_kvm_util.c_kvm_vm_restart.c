
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int memory_size; int guest_phys_addr; int flags; int slot; } ;
struct userspace_mem_region {TYPE_1__ region; struct userspace_mem_region* next; } ;
struct kvm_vm {int fd; struct userspace_mem_region* userspace_mem_region_head; scalar_t__ has_irqchip; } ;


 int KVM_SET_USER_MEMORY_REGION ;
 int TEST_ASSERT (int,char*,int,int ,int ,int ,int ,int ) ;
 int errno ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int vm_create_irqchip (struct kvm_vm*) ;
 int vm_open (struct kvm_vm*,int) ;

void kvm_vm_restart(struct kvm_vm *vmp, int perm)
{
 struct userspace_mem_region *region;

 vm_open(vmp, perm);
 if (vmp->has_irqchip)
  vm_create_irqchip(vmp);

 for (region = vmp->userspace_mem_region_head; region;
  region = region->next) {
  int ret = ioctl(vmp->fd, KVM_SET_USER_MEMORY_REGION, &region->region);
  TEST_ASSERT(ret == 0, "KVM_SET_USER_MEMORY_REGION IOCTL failed,\n"
       "  rc: %i errno: %i\n"
       "  slot: %u flags: 0x%x\n"
       "  guest_phys_addr: 0x%lx size: 0x%lx",
       ret, errno, region->region.slot,
       region->region.flags,
       region->region.guest_phys_addr,
       region->region.memory_size);
 }
}
