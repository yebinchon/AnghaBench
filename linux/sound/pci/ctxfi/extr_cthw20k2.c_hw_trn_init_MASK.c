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
typedef  int u32 ;
struct trn_conf {unsigned long vm_pgt_phys; } ;
struct hw {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ TRANSPORT_CTL ; 
 scalar_t__ TRANSPORT_ENB ; 
 scalar_t__ TRANSPORT_INT ; 
 scalar_t__ VMEM_CTL ; 
 scalar_t__ VMEM_PTPAH ; 
 scalar_t__ VMEM_PTPAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hw*,scalar_t__,int) ; 
 int FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct hw *hw, const struct trn_conf *info)
{
	u32 vmctl, data;
	u32 ptp_phys_low, ptp_phys_high;
	int i;

	/* Set up device page table */
	if ((~0UL) == info->vm_pgt_phys) {
		FUNC0(hw->card->dev,
			  "Wrong device page table page address!!!\n");
		return -1;
	}

	vmctl = 0x80000C0F;  /* 32-bit, 4k-size page */
	ptp_phys_low = (u32)info->vm_pgt_phys;
	ptp_phys_high = FUNC3(info->vm_pgt_phys);
	if (sizeof(void *) == 8) /* 64bit address */
		vmctl |= (3 << 8);
	/* Write page table physical address to all PTPAL registers */
	for (i = 0; i < 64; i++) {
		FUNC2(hw, VMEM_PTPAL+(16*i), ptp_phys_low);
		FUNC2(hw, VMEM_PTPAH+(16*i), ptp_phys_high);
	}
	/* Enable virtual memory transfer */
	FUNC2(hw, VMEM_CTL, vmctl);
	/* Enable transport bus master and queueing of request */
	FUNC2(hw, TRANSPORT_CTL, 0x03);
	FUNC2(hw, TRANSPORT_INT, 0x200c01);
	/* Enable transport ring */
	data = FUNC1(hw, TRANSPORT_ENB);
	FUNC2(hw, TRANSPORT_ENB, (data | 0x03));

	return 0;
}