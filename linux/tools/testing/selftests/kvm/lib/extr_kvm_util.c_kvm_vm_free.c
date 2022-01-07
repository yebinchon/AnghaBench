
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ memory_size; } ;
struct userspace_mem_region {int vpages_mapped; int vpages_valid; int mmap_size; int mmap_start; int unused_phy_pages; struct userspace_mem_region* next; struct userspace_mem_region* userspace_mem_region_head; TYPE_1__ region; int fd; } ;
struct kvm_vm {int vpages_mapped; int vpages_valid; int mmap_size; int mmap_start; int unused_phy_pages; struct kvm_vm* next; struct kvm_vm* userspace_mem_region_head; TYPE_1__ region; int fd; } ;


 int KVM_SET_USER_MEMORY_REGION ;
 int TEST_ASSERT (int,char*,int,int ) ;
 int errno ;
 int free (struct userspace_mem_region*) ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int kvm_vm_release (struct userspace_mem_region*) ;
 int munmap (int ,int ) ;
 int sparsebit_free (int *) ;

void kvm_vm_free(struct kvm_vm *vmp)
{
 int ret;

 if (vmp == ((void*)0))
  return;


 while (vmp->userspace_mem_region_head) {
  struct userspace_mem_region *region
   = vmp->userspace_mem_region_head;

  region->region.memory_size = 0;
  ret = ioctl(vmp->fd, KVM_SET_USER_MEMORY_REGION,
   &region->region);
  TEST_ASSERT(ret == 0, "KVM_SET_USER_MEMORY_REGION IOCTL failed, "
   "rc: %i errno: %i", ret, errno);

  vmp->userspace_mem_region_head = region->next;
  sparsebit_free(&region->unused_phy_pages);
  ret = munmap(region->mmap_start, region->mmap_size);
  TEST_ASSERT(ret == 0, "munmap failed, rc: %i errno: %i",
       ret, errno);

  free(region);
 }


 sparsebit_free(&vmp->vpages_valid);
 sparsebit_free(&vmp->vpages_mapped);

 kvm_vm_release(vmp);


 free(vmp);
}
