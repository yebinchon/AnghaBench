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
struct pci_dev {int dummy; } ;
struct ct_vm_block {int size; int /*<<< orphan*/  list; scalar_t__ addr; } ;
struct ct_vm {int size; int /*<<< orphan*/  unused; int /*<<< orphan*/  used; int /*<<< orphan*/  get_ptp_phys; int /*<<< orphan*/  unmap; int /*<<< orphan*/  map; int /*<<< orphan*/ * ptp; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CT_ADDRS_PER_PAGE ; 
 int CT_PTP_NUM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  ct_get_ptp_phys ; 
 int /*<<< orphan*/  FUNC1 (struct ct_vm*) ; 
 int /*<<< orphan*/  ct_vm_map ; 
 int /*<<< orphan*/  ct_vm_unmap ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 

int FUNC7(struct ct_vm **rvm, struct pci_dev *pci)
{
	struct ct_vm *vm;
	struct ct_vm_block *block;
	int i, err = 0;

	*rvm = NULL;

	vm = FUNC2(sizeof(*vm), GFP_KERNEL);
	if (!vm)
		return -ENOMEM;

	FUNC4(&vm->lock);

	/* Allocate page table pages */
	for (i = 0; i < CT_PTP_NUM; i++) {
		err = FUNC5(SNDRV_DMA_TYPE_DEV,
					  FUNC6(pci),
					  PAGE_SIZE, &vm->ptp[i]);
		if (err < 0)
			break;
	}
	if (err < 0) {
		/* no page table pages are allocated */
		FUNC1(vm);
		return -ENOMEM;
	}
	vm->size = CT_ADDRS_PER_PAGE * i;
	vm->map = ct_vm_map;
	vm->unmap = ct_vm_unmap;
	vm->get_ptp_phys = ct_get_ptp_phys;
	FUNC0(&vm->unused);
	FUNC0(&vm->used);
	block = FUNC2(sizeof(*block), GFP_KERNEL);
	if (NULL != block) {
		block->addr = 0;
		block->size = vm->size;
		FUNC3(&block->list, &vm->unused);
	}

	*rvm = vm;
	return 0;
}