#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int vm_vaddr_t ;
typedef  int vm_paddr_t ;
typedef  int uint64_t ;
struct kvm_vm {int page_size; int pgd; } ;

/* Variables and functions */
 int PAGE_INVALID ; 
 int REGION_ENTRY_INVALID ; 
 int REGION_ENTRY_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int* FUNC1 (struct kvm_vm*,int) ; 

vm_paddr_t FUNC2(struct kvm_vm *vm, vm_vaddr_t gva)
{
	int ri, idx;
	uint64_t *entry;

	FUNC0(vm->page_size == 4096, "Unsupported page size: 0x%x",
		    vm->page_size);

	entry = FUNC1(vm, vm->pgd);
	for (ri = 1; ri <= 4; ri++) {
		idx = (gva >> (64 - 11 * ri)) & 0x7ffu;
		FUNC0(!(entry[idx] & REGION_ENTRY_INVALID),
			    "No region mapping for vm virtual address 0x%lx",
			    gva);
		entry = FUNC1(vm, entry[idx] & REGION_ENTRY_ORIGIN);
	}

	idx = (gva >> 12) & 0x0ffu;		/* page index */

	FUNC0(!(entry[idx] & PAGE_INVALID),
		    "No page mapping for vm virtual address 0x%lx", gva);

	return (entry[idx] & ~0xffful) + (gva & 0xffful);
}