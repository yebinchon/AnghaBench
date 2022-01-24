#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_4__* card; TYPE_3__* rmidi; int /*<<< orphan*/  irq; int /*<<< orphan*/  mmio; int /*<<< orphan*/  lock; TYPE_2__* dma_wt; TYPE_1__* dma_adb; } ;
typedef  TYPE_5__ vortex_t ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  private_data; } ;
struct TYPE_9__ {scalar_t__ fifo_status; int /*<<< orphan*/  substream; } ;
struct TYPE_8__ {scalar_t__ fifo_status; int /*<<< orphan*/  substream; } ;

/* Variables and functions */
 int CTRL_IRQ_ENABLE ; 
 scalar_t__ FIFO_START ; 
 int IRQ_DMA ; 
 int IRQ_ERR_MASK ; 
 int IRQ_FATAL ; 
 int IRQ_FIFO ; 
 int IRQ_MIDI ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IRQ_PARITY ; 
 int IRQ_PCMOUT ; 
 int IRQ_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IRQ_TIMER ; 
 int NR_ADB ; 
 int NR_WT ; 
 int /*<<< orphan*/  VORTEX_CTRL ; 
 int /*<<< orphan*/  VORTEX_IRQ_SOURCE ; 
 int /*<<< orphan*/  VORTEX_IRQ_STAT ; 
 int /*<<< orphan*/  VORTEX_STAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	vortex_t *vortex = dev_id;
	int i, handled;
	u32 source;

	//check if the interrupt is ours.
	if (!(FUNC2(vortex->mmio, VORTEX_STAT) & 0x1))
		return IRQ_NONE;

	// This is the Interrupt Enable flag we set before (consistency check).
	if (!(FUNC2(vortex->mmio, VORTEX_CTRL) & CTRL_IRQ_ENABLE))
		return IRQ_NONE;

	source = FUNC2(vortex->mmio, VORTEX_IRQ_SOURCE);
	// Reset IRQ flags.
	FUNC3(vortex->mmio, VORTEX_IRQ_SOURCE, source);
	FUNC2(vortex->mmio, VORTEX_IRQ_SOURCE);
	// Is at least one IRQ flag set?
	if (source == 0) {
		FUNC1(vortex->card->dev, "missing irq source\n");
		return IRQ_NONE;
	}

	handled = 0;
	// Attend every interrupt source.
	if (FUNC8(source & IRQ_ERR_MASK)) {
		if (source & IRQ_FATAL) {
			FUNC1(vortex->card->dev, "IRQ fatal error\n");
		}
		if (source & IRQ_PARITY) {
			FUNC1(vortex->card->dev, "IRQ parity error\n");
		}
		if (source & IRQ_REG) {
			FUNC1(vortex->card->dev, "IRQ reg error\n");
		}
		if (source & IRQ_FIFO) {
			FUNC1(vortex->card->dev, "IRQ fifo error\n");
		}
		if (source & IRQ_DMA) {
			FUNC1(vortex->card->dev, "IRQ dma error\n");
		}
		handled = 1;
	}
	if (source & IRQ_PCMOUT) {
		/* ALSA period acknowledge. */
		FUNC6(&vortex->lock);
		for (i = 0; i < NR_ADB; i++) {
			if (vortex->dma_adb[i].fifo_status == FIFO_START) {
				if (!FUNC9(vortex, i))
					continue;
				FUNC7(&vortex->lock);
				FUNC5(vortex->dma_adb[i].
						       substream);
				FUNC6(&vortex->lock);
			}
		}
#ifndef CHIP_AU8810
		for (i = 0; i < NR_WT; i++) {
			if (vortex->dma_wt[i].fifo_status == FIFO_START) {
				/* FIXME: we ignore the return value from
				 * vortex_wtdma_bufshift() below as the delta
				 * calculation seems not working for wavetable
				 * by some reason
				 */
				FUNC10(vortex, i);
				FUNC7(&vortex->lock);
				FUNC5(vortex->dma_wt[i].
						       substream);
				FUNC6(&vortex->lock);
			}
		}
#endif
		FUNC7(&vortex->lock);
		handled = 1;
	}
	//Acknowledge the Timer interrupt
	if (source & IRQ_TIMER) {
		FUNC2(vortex->mmio, VORTEX_IRQ_STAT);
		handled = 1;
	}
	if ((source & IRQ_MIDI) && vortex->rmidi) {
		FUNC4(vortex->irq,
					  vortex->rmidi->private_data);
		handled = 1;
	}

	if (!handled) {
		FUNC1(vortex->card->dev, "unknown irq source %x\n", source);
	}
	return FUNC0(handled);
}