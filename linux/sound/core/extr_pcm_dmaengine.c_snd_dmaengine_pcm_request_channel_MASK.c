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
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_filter_fn ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CYCLIC ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dma_chan* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

struct dma_chan *FUNC3(dma_filter_fn filter_fn,
	void *filter_data)
{
	dma_cap_mask_t mask;

	FUNC1(mask);
	FUNC0(DMA_SLAVE, mask);
	FUNC0(DMA_CYCLIC, mask);

	return FUNC2(mask, filter_fn, filter_data);
}