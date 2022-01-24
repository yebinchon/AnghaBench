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
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

void FUNC9(struct device *dev, size_t size,
			 void *virt, dma_addr_t addr)
{
	struct dma_debug_entry ref = {
		.type           = dma_debug_coherent,
		.dev            = dev,
		.offset		= FUNC3(virt),
		.dev_addr       = addr,
		.size           = size,
		.direction      = DMA_BIDIRECTIONAL,
	};

	/* handle vmalloc and linear addresses */
	if (!FUNC2(virt) && !FUNC6(virt))
		return;

	if (FUNC2(virt))
		ref.pfn = FUNC8(virt);
	else
		ref.pfn = FUNC4(FUNC7(virt));

	if (FUNC5(FUNC1()))
		return;

	FUNC0(&ref);
}