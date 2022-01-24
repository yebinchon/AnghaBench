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
struct hdsp {unsigned long capture_buffer; unsigned long playback_buffer; TYPE_2__ playback_dma_buf; TYPE_2__ capture_dma_buf; int /*<<< orphan*/  card_name; TYPE_1__* card; int /*<<< orphan*/  pci; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HDSP_DMA_AREA_BYTES ; 
 int /*<<< orphan*/  HDSP_inputBufferAddress ; 
 int /*<<< orphan*/  HDSP_outputBufferAddress ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdsp*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hdsp *hdsp)
{
	unsigned long pb_bus, cb_bus;

	if (FUNC4(hdsp->pci, &hdsp->capture_dma_buf, HDSP_DMA_AREA_BYTES) < 0 ||
	    FUNC4(hdsp->pci, &hdsp->playback_dma_buf, HDSP_DMA_AREA_BYTES) < 0) {
		if (hdsp->capture_dma_buf.area)
			FUNC3(&hdsp->capture_dma_buf);
		FUNC1(hdsp->card->dev,
			"%s: no buffers available\n", hdsp->card_name);
		return -ENOMEM;
	}

	/* Align to bus-space 64K boundary */

	cb_bus = FUNC0(hdsp->capture_dma_buf.addr, 0x10000ul);
	pb_bus = FUNC0(hdsp->playback_dma_buf.addr, 0x10000ul);

	/* Tell the card where it is */

	FUNC2(hdsp, HDSP_inputBufferAddress, cb_bus);
	FUNC2(hdsp, HDSP_outputBufferAddress, pb_bus);

	hdsp->capture_buffer = hdsp->capture_dma_buf.area + (cb_bus - hdsp->capture_dma_buf.addr);
	hdsp->playback_buffer = hdsp->playback_dma_buf.area + (pb_bus - hdsp->playback_dma_buf.addr);

	return 0;
}