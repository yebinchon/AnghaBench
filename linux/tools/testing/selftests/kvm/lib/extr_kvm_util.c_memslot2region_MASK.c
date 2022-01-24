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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ slot; } ;
struct userspace_mem_region {TYPE_1__ region; struct userspace_mem_region* next; } ;
struct kvm_vm {struct userspace_mem_region* userspace_mem_region_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kvm_vm*,int) ; 

struct userspace_mem_region *
FUNC4(struct kvm_vm *vm, uint32_t memslot)
{
	struct userspace_mem_region *region;

	for (region = vm->userspace_mem_region_head; region;
		region = region->next) {
		if (region->region.slot == memslot)
			break;
	}
	if (region == NULL) {
		FUNC1(stderr, "No mem region with the requested slot found,\n"
			"  requested slot: %ld\n", memslot);
		FUNC2("---- vm dump ----\n", stderr);
		FUNC3(stderr, vm, 2);
		FUNC0(false, "Mem region not found");
	}

	return region;
}