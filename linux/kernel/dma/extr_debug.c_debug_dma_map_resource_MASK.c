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
struct dma_debug_entry {size_t size; int direction; int /*<<< orphan*/  map_err_type; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  offset; int /*<<< orphan*/  pfn; struct device* dev; int /*<<< orphan*/  type; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_ERR_NOT_CHECKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_debug_entry*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  dma_debug_resource ; 
 struct dma_debug_entry* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct device *dev, phys_addr_t addr, size_t size,
			    int direction, dma_addr_t dma_addr)
{
	struct dma_debug_entry *entry;

	if (FUNC5(FUNC2()))
		return;

	entry = FUNC3();
	if (!entry)
		return;

	entry->type		= dma_debug_resource;
	entry->dev		= dev;
	entry->pfn		= FUNC0(addr);
	entry->offset		= FUNC4(addr);
	entry->size		= size;
	entry->dev_addr		= dma_addr;
	entry->direction	= direction;
	entry->map_err_type	= MAP_ERR_NOT_CHECKED;

	FUNC1(entry);
}