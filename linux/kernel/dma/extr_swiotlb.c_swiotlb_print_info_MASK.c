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

/* Variables and functions */
 unsigned long IO_TLB_SHIFT ; 
 scalar_t__ io_tlb_end ; 
 unsigned long io_tlb_nslabs ; 
 scalar_t__ io_tlb_start ; 
 scalar_t__ no_iotlb_memory ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
	unsigned long bytes = io_tlb_nslabs << IO_TLB_SHIFT;

	if (no_iotlb_memory) {
		FUNC1("No low mem\n");
		return;
	}

	FUNC0("mapped [mem %#010llx-%#010llx] (%luMB)\n",
	       (unsigned long long)io_tlb_start,
	       (unsigned long long)io_tlb_end,
	       bytes >> 20);
}