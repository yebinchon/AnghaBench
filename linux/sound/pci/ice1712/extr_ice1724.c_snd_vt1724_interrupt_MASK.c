#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_ice1712 {scalar_t__ capture_con_substream; scalar_t__ playback_con_substream; scalar_t__* playback_con_substream_ds; scalar_t__ capture_pro_substream; scalar_t__ playback_pro_substream; int /*<<< orphan*/  reg_lock; scalar_t__ midi_input; scalar_t__ midi_output; TYPE_1__* card; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FIFO_ERR ; 
 int /*<<< orphan*/  DMA_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ ; 
 int /*<<< orphan*/  IRQSTAT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned char VT1724_IRQ_MPU_RX ; 
 unsigned char VT1724_IRQ_MPU_TX ; 
 unsigned char VT1724_IRQ_MTPCM ; 
 unsigned char VT1724_MULTI_FIFO_ERR ; 
 unsigned char VT1724_MULTI_PDMA0 ; 
 unsigned char VT1724_MULTI_PDMA1 ; 
 unsigned char VT1724_MULTI_PDMA2 ; 
 unsigned char VT1724_MULTI_PDMA3 ; 
 unsigned char VT1724_MULTI_PDMA4 ; 
 unsigned char VT1724_MULTI_RDMA0 ; 
 unsigned char VT1724_MULTI_RDMA1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,unsigned char,int /*<<< orphan*/ ) ; 
 unsigned char FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_ice1712*) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *dev_id)
{
	struct snd_ice1712 *ice = dev_id;
	unsigned char status;
	unsigned char status_mask =
		VT1724_IRQ_MPU_RX | VT1724_IRQ_MPU_TX | VT1724_IRQ_MTPCM;
	int handled = 0;
	int timeout = 0;

	while (1) {
		status = FUNC5(FUNC1(ice, IRQSTAT));
		status &= status_mask;
		if (status == 0)
			break;
		FUNC8(&ice->reg_lock);
		if (++timeout > 10) {
			status = FUNC5(FUNC1(ice, IRQSTAT));
			FUNC3(ice->card->dev,
				"Too long irq loop, status = 0x%x\n", status);
			if (status & VT1724_IRQ_MPU_TX) {
				FUNC3(ice->card->dev, "Disabling MPU_TX\n");
				FUNC4(ice, VT1724_IRQ_MPU_TX, 0);
			}
			FUNC9(&ice->reg_lock);
			break;
		}
		handled = 1;
		if (status & VT1724_IRQ_MPU_TX) {
			if (ice->midi_output)
				FUNC12(ice);
			else
				FUNC4(ice, VT1724_IRQ_MPU_TX, 0);
			/* Due to mysterical reasons, MPU_TX is always
			 * generated (and can't be cleared) when a PCM
			 * playback is going.  So let's ignore at the
			 * next loop.
			 */
			status_mask &= ~VT1724_IRQ_MPU_TX;
		}
		if (status & VT1724_IRQ_MPU_RX) {
			if (ice->midi_input)
				FUNC11(ice);
			else
				FUNC10(ice);
		}
		/* ack MPU irq */
		FUNC6(status, FUNC1(ice, IRQSTAT));
		FUNC9(&ice->reg_lock);
		if (status & VT1724_IRQ_MTPCM) {
			/*
			 * Multi-track PCM
			 * PCM assignment are:
			 * Playback DMA0 (M/C) = playback_pro_substream
			 * Playback DMA1 = playback_con_substream_ds[0]
			 * Playback DMA2 = playback_con_substream_ds[1]
			 * Playback DMA3 = playback_con_substream_ds[2]
			 * Playback DMA4 (SPDIF) = playback_con_substream
			 * Record DMA0 = capture_pro_substream
			 * Record DMA1 = capture_con_substream
			 */
			unsigned char mtstat = FUNC5(FUNC0(ice, IRQ));
			if (mtstat & VT1724_MULTI_PDMA0) {
				if (ice->playback_pro_substream)
					FUNC7(ice->playback_pro_substream);
			}
			if (mtstat & VT1724_MULTI_RDMA0) {
				if (ice->capture_pro_substream)
					FUNC7(ice->capture_pro_substream);
			}
			if (mtstat & VT1724_MULTI_PDMA1) {
				if (ice->playback_con_substream_ds[0])
					FUNC7(ice->playback_con_substream_ds[0]);
			}
			if (mtstat & VT1724_MULTI_PDMA2) {
				if (ice->playback_con_substream_ds[1])
					FUNC7(ice->playback_con_substream_ds[1]);
			}
			if (mtstat & VT1724_MULTI_PDMA3) {
				if (ice->playback_con_substream_ds[2])
					FUNC7(ice->playback_con_substream_ds[2]);
			}
			if (mtstat & VT1724_MULTI_PDMA4) {
				if (ice->playback_con_substream)
					FUNC7(ice->playback_con_substream);
			}
			if (mtstat & VT1724_MULTI_RDMA1) {
				if (ice->capture_con_substream)
					FUNC7(ice->capture_con_substream);
			}
			/* ack anyway to avoid freeze */
			FUNC6(mtstat, FUNC0(ice, IRQ));
			/* ought to really handle this properly */
			if (mtstat & VT1724_MULTI_FIFO_ERR) {
				unsigned char fstat = FUNC5(FUNC0(ice, DMA_FIFO_ERR));
				FUNC6(fstat, FUNC0(ice, DMA_FIFO_ERR));
				FUNC6(VT1724_MULTI_FIFO_ERR | FUNC5(FUNC0(ice, DMA_INT_MASK)), FUNC0(ice, DMA_INT_MASK));
				/* If I don't do this, I get machine lockup due to continual interrupts */
			}

		}
	}
	return FUNC2(handled);
}