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
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned int FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  isa_dma_bridge_buggy ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

unsigned int FUNC8(unsigned long dma, unsigned int size)
{
	unsigned long flags;
	unsigned int result, result1;

	flags = FUNC0();
	FUNC1(dma);
	if (!isa_dma_bridge_buggy)
		FUNC2(dma);
	result = FUNC4(dma);
	/*
	 * HACK - read the counter again and choose higher value in order to
	 * avoid reading during counter lower byte roll over if the
	 * isa_dma_bridge_buggy is set.
	 */
	result1 = FUNC4(dma);
	if (!isa_dma_bridge_buggy)
		FUNC3(dma);
	FUNC6(flags);
	if (FUNC7(result < result1))
		result = result1;
#ifdef CONFIG_SND_DEBUG
	if (result > size)
		pr_err("ALSA: pointer (0x%x) for DMA #%ld is greater than transfer size (0x%x)\n", result, dma, size);
#endif
	if (result >= size || result == 0)
		return 0;
	else
		return size - result;
}