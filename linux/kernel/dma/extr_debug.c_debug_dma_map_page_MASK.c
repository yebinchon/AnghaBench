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
struct page {int dummy; } ;
struct dma_debug_entry {size_t offset; size_t size; int direction; int /*<<< orphan*/  map_err_type; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  pfn; int /*<<< orphan*/  type; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_ERR_NOT_CHECKED ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_debug_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct page*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  dma_debug_single ; 
 struct dma_debug_entry* FUNC5 () ; 
 scalar_t__ FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct device *dev, struct page *page, size_t offset,
			size_t size, int direction, dma_addr_t dma_addr)
{
	struct dma_debug_entry *entry;

	if (FUNC9(FUNC4()))
		return;

	if (FUNC6(dev, dma_addr))
		return;

	entry = FUNC5();
	if (!entry)
		return;

	entry->dev       = dev;
	entry->type      = dma_debug_single;
	entry->pfn	 = FUNC8(page);
	entry->offset	 = offset,
	entry->dev_addr  = dma_addr;
	entry->size      = size;
	entry->direction = direction;
	entry->map_err_type = MAP_ERR_NOT_CHECKED;

	FUNC3(dev, page, offset);

	if (!FUNC0(page)) {
		void *addr = FUNC7(page) + offset;

		FUNC2(dev, addr, size);
	}

	FUNC1(entry);
}