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
typedef  int uint32_t ;
struct snd_ps3_card_info {int /*<<< orphan*/  substream; scalar_t__ silent; int /*<<< orphan*/  running; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS3_AUDIO_AX_IS ; 
 int /*<<< orphan*/  PS3_AUDIO_INTR_0 ; 
 int /*<<< orphan*/  SND_PS3_DMA_FILLTYPE_FIRSTFILL ; 
 int /*<<< orphan*/  SND_PS3_DMA_FILLTYPE_RUNNING ; 
 int /*<<< orphan*/  SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL ; 
 int /*<<< orphan*/  SND_PS3_DMA_FILLTYPE_SILENT_RUNNING ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ps3_card_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ps3_card_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{

	uint32_t port_intr;
	int underflow_occured = 0;
	struct snd_ps3_card_info *card = dev_id;

	if (!card->running) {
		FUNC6(PS3_AUDIO_AX_IS, 0);
		FUNC6(PS3_AUDIO_INTR_0, 0);
		return IRQ_HANDLED;
	}

	port_intr = FUNC2(PS3_AUDIO_AX_IS);
	/*
	 *serial buffer empty detected (every 4 times),
	 *program next dma and kick it
	 */
	if (port_intr & FUNC0(0)) {
		FUNC7(PS3_AUDIO_AX_IS, FUNC0(0));
		if (port_intr & FUNC1(0)) {
			FUNC7(PS3_AUDIO_AX_IS, port_intr);
			underflow_occured = 1;
		}
		if (card->silent) {
			/* we are still in silent time */
			FUNC5(card,
				(underflow_occured) ?
				SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL :
				SND_PS3_DMA_FILLTYPE_SILENT_RUNNING);
			FUNC4(card);
			card->silent--;
		} else {
			FUNC5(card,
				(underflow_occured) ?
				SND_PS3_DMA_FILLTYPE_FIRSTFILL :
				SND_PS3_DMA_FILLTYPE_RUNNING);
			FUNC4(card);
			FUNC3(card->substream);
		}
	} else if (port_intr & FUNC1(0)) {
		FUNC7(PS3_AUDIO_AX_IS, FUNC1(0));
		/*
		 * serial out underflow, but buffer empty not detected.
		 * in this case, fill fifo with 0 to recover.  After
		 * filling dummy data, serial automatically start to
		 * consume them and then will generate normal buffer
		 * empty interrupts.
		 * If both buffer underflow and buffer empty are occurred,
		 * it is better to do nomal data transfer than empty one
		 */
		FUNC5(card,
				    SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL);
		FUNC4(card);
		FUNC5(card,
				    SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL);
		FUNC4(card);
	}
	/* clear interrupt cause */
	return IRQ_HANDLED;
}