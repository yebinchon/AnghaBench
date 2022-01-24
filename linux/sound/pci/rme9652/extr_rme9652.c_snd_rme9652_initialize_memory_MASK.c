#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long area; unsigned long addr; } ;
struct snd_rme9652 {unsigned long capture_buffer; unsigned long playback_buffer; TYPE_2__ playback_dma_buf; TYPE_2__ capture_dma_buf; int /*<<< orphan*/  card_name; TYPE_1__* card; int /*<<< orphan*/  pci; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RME9652_DMA_AREA_BYTES ; 
 int /*<<< orphan*/  RME9652_play_buffer ; 
 int /*<<< orphan*/  RME9652_rec_buffer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rme9652*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_rme9652 *rme9652)
{
	unsigned long pb_bus, cb_bus;

	if (FUNC4(rme9652->pci, &rme9652->capture_dma_buf, RME9652_DMA_AREA_BYTES) < 0 ||
	    FUNC4(rme9652->pci, &rme9652->playback_dma_buf, RME9652_DMA_AREA_BYTES) < 0) {
		if (rme9652->capture_dma_buf.area)
			FUNC3(&rme9652->capture_dma_buf);
		FUNC1(rme9652->card->dev,
			"%s: no buffers available\n", rme9652->card_name);
		return -ENOMEM;
	}

	/* Align to bus-space 64K boundary */

	cb_bus = FUNC0(rme9652->capture_dma_buf.addr, 0x10000ul);
	pb_bus = FUNC0(rme9652->playback_dma_buf.addr, 0x10000ul);

	/* Tell the card where it is */

	FUNC2(rme9652, RME9652_rec_buffer, cb_bus);
	FUNC2(rme9652, RME9652_play_buffer, pb_bus);

	rme9652->capture_buffer = rme9652->capture_dma_buf.area + (cb_bus - rme9652->capture_dma_buf.addr);
	rme9652->playback_buffer = rme9652->playback_dma_buf.area + (pb_bus - rme9652->playback_dma_buf.addr);

	return 0;
}