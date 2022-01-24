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
struct logic_pio_hwaddr {scalar_t__ flags; scalar_t__ size; scalar_t__ hw_start; scalar_t__ io_start; } ;
struct fwnode_handle {int dummy; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 scalar_t__ LOGIC_PIO_CPU_MMIO ; 
 struct logic_pio_hwaddr* FUNC0 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

unsigned long FUNC2(struct fwnode_handle *fwnode,
				     resource_size_t addr, resource_size_t size)
{
	struct logic_pio_hwaddr *range;

	range = FUNC0(fwnode);
	if (!range || range->flags == LOGIC_PIO_CPU_MMIO) {
		FUNC1("IO range not found or invalid\n");
		return ~0UL;
	}
	if (range->size < size) {
		FUNC1("resource size %pa cannot fit in IO range size %pa\n",
		       &size, &range->size);
		return ~0UL;
	}
	return addr - range->hw_start + range->io_start;
}