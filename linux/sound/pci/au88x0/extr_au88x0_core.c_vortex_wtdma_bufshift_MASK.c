#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* card; int /*<<< orphan*/  mmio; TYPE_3__* dma_wt; } ;
typedef  TYPE_2__ vortex_t ;
struct TYPE_7__ {int nr_periods; int period_real; int period_virt; int period_bytes; int /*<<< orphan*/  substream; } ;
typedef  TYPE_3__ stream_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ VORTEX_WTDMA_BUFBASE ; 
 scalar_t__ VORTEX_WTDMA_STAT ; 
 int WT_SUBBUF_MASK ; 
 int WT_SUBBUF_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(vortex_t * vortex, int wtdma)
{
	stream_t *dma = &vortex->dma_wt[wtdma];
	int page, p, pp, delta, i;

	page =
	    (FUNC1(vortex->mmio, VORTEX_WTDMA_STAT + (wtdma << 2))
	     >> WT_SUBBUF_SHIFT) & WT_SUBBUF_MASK;
	if (dma->nr_periods >= 4)
		delta = (page - dma->period_real) & 3;
	else {
		delta = (page - dma->period_real);
		if (delta < 0)
			delta += dma->nr_periods;
	}
	if (delta == 0)
		return 0;

	/* refresh hw page table */
	if (dma->nr_periods > 4) {
		for (i = 0; i < delta; i++) {
			/* p: audio buffer page index */
			p = dma->period_virt + i + 4;
			if (p >= dma->nr_periods)
				p -= dma->nr_periods;
			/* pp: hardware DMA page index. */
			pp = dma->period_real + i;
			if (pp >= 4)
				pp -= 4;
			FUNC2(vortex->mmio,
				VORTEX_WTDMA_BUFBASE +
				(((wtdma << 2) + pp) << 2),
				FUNC3(dma->substream,
						       dma->period_bytes * p));
			/* Force write thru cache. */
			FUNC1(vortex->mmio, VORTEX_WTDMA_BUFBASE +
			       (((wtdma << 2) + pp) << 2));
		}
	}
	dma->period_virt += delta;
	if (dma->period_virt >= dma->nr_periods)
		dma->period_virt -= dma->nr_periods;
	dma->period_real = page;

	if (delta != 1)
		FUNC0(vortex->card->dev, "wt virt = %d, delta = %d\n",
			 dma->period_virt, delta);

	return delta;
}