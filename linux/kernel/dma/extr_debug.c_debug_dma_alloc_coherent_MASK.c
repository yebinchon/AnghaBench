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
struct dma_debug_entry {size_t size; int /*<<< orphan*/  pfn; int /*<<< orphan*/  direction; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  offset; struct device* dev; int /*<<< orphan*/  type; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct dma_debug_entry*) ; 
 int /*<<< orphan*/  dma_debug_coherent ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct dma_debug_entry* FUNC2 () ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

void FUNC10(struct device *dev, size_t size,
			      dma_addr_t dma_addr, void *virt)
{
	struct dma_debug_entry *entry;

	if (FUNC6(FUNC1()))
		return;

	if (FUNC6(virt == NULL))
		return;

	/* handle vmalloc and linear addresses */
	if (!FUNC3(virt) && !FUNC7(virt))
		return;

	entry = FUNC2();
	if (!entry)
		return;

	entry->type      = dma_debug_coherent;
	entry->dev       = dev;
	entry->offset	 = FUNC4(virt);
	entry->size      = size;
	entry->dev_addr  = dma_addr;
	entry->direction = DMA_BIDIRECTIONAL;

	if (FUNC3(virt))
		entry->pfn = FUNC9(virt);
	else
		entry->pfn = FUNC5(FUNC8(virt));

	FUNC0(entry);
}