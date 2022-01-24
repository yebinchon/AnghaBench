#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ memory_size; } ;
struct userspace_mem_region {int /*<<< orphan*/  vpages_mapped; int /*<<< orphan*/  vpages_valid; int /*<<< orphan*/  mmap_size; int /*<<< orphan*/  mmap_start; int /*<<< orphan*/  unused_phy_pages; struct userspace_mem_region* next; struct userspace_mem_region* userspace_mem_region_head; TYPE_1__ region; int /*<<< orphan*/  fd; } ;
struct kvm_vm {int /*<<< orphan*/  vpages_mapped; int /*<<< orphan*/  vpages_valid; int /*<<< orphan*/  mmap_size; int /*<<< orphan*/  mmap_start; int /*<<< orphan*/  unused_phy_pages; struct kvm_vm* next; struct kvm_vm* userspace_mem_region_head; TYPE_1__ region; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_SET_USER_MEMORY_REGION ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct userspace_mem_region*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct userspace_mem_region*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct kvm_vm *vmp)
{
	int ret;

	if (vmp == NULL)
		return;

	/* Free userspace_mem_regions. */
	while (vmp->userspace_mem_region_head) {
		struct userspace_mem_region *region
			= vmp->userspace_mem_region_head;

		region->region.memory_size = 0;
		ret = FUNC2(vmp->fd, KVM_SET_USER_MEMORY_REGION,
			&region->region);
		FUNC0(ret == 0, "KVM_SET_USER_MEMORY_REGION IOCTL failed, "
			"rc: %i errno: %i", ret, errno);

		vmp->userspace_mem_region_head = region->next;
		FUNC5(&region->unused_phy_pages);
		ret = FUNC4(region->mmap_start, region->mmap_size);
		FUNC0(ret == 0, "munmap failed, rc: %i errno: %i",
			    ret, errno);

		FUNC1(region);
	}

	/* Free sparsebit arrays. */
	FUNC5(&vmp->vpages_valid);
	FUNC5(&vmp->vpages_mapped);

	FUNC3(vmp);

	/* Free the structure describing the VM. */
	FUNC1(vmp);
}