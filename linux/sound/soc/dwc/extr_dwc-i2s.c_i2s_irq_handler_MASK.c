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
typedef  int u32 ;
struct dw_i2s_dev {int /*<<< orphan*/  dev; scalar_t__ use_pio; int /*<<< orphan*/  i2s_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ISR_RXDA ; 
 int ISR_RXFO ; 
 int ISR_TXFE ; 
 int ISR_TXFO ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_i2s_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_i2s_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_i2s_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct dw_i2s_dev *dev = dev_id;
	bool irq_valid = false;
	u32 isr[4];
	int i;

	for (i = 0; i < 4; i++)
		isr[i] = FUNC5(dev->i2s_base, FUNC0(i));

	FUNC4(dev, SNDRV_PCM_STREAM_PLAYBACK);
	FUNC4(dev, SNDRV_PCM_STREAM_CAPTURE);

	for (i = 0; i < 4; i++) {
		/*
		 * Check if TX fifo is empty. If empty fill FIFO with samples
		 * NOTE: Only two channels supported
		 */
		if ((isr[i] & ISR_TXFE) && (i == 0) && dev->use_pio) {
			FUNC3(dev);
			irq_valid = true;
		}

		/*
		 * Data available. Retrieve samples from FIFO
		 * NOTE: Only two channels supported
		 */
		if ((isr[i] & ISR_RXDA) && (i == 0) && dev->use_pio) {
			FUNC2(dev);
			irq_valid = true;
		}

		/* Error Handling: TX */
		if (isr[i] & ISR_TXFO) {
			FUNC1(dev->dev, "TX overrun (ch_id=%d)\n", i);
			irq_valid = true;
		}

		/* Error Handling: TX */
		if (isr[i] & ISR_RXFO) {
			FUNC1(dev->dev, "RX overrun (ch_id=%d)\n", i);
			irq_valid = true;
		}
	}

	if (irq_valid)
		return IRQ_HANDLED;
	else
		return IRQ_NONE;
}