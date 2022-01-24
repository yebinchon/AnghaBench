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
struct snd_wss {int hardware; int mode; int /*<<< orphan*/  reg_lock; scalar_t__ capture_substream; scalar_t__ playback_substream; scalar_t__ single_dma; TYPE_1__* timer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  sticks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char CS4231_ALL_IRQS ; 
 int /*<<< orphan*/  CS4231_IRQ_STATUS ; 
 unsigned char CS4231_PLAYBACK_IRQ ; 
 unsigned char CS4231_RECORD_IRQ ; 
 unsigned char CS4231_TIMER_IRQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  STATUS ; 
 int WSS_HW_AD1848_MASK ; 
 int WSS_HW_INTERWAVE ; 
 int WSS_MODE_PLAY ; 
 int WSS_MODE_RECORD ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (struct snd_wss*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_wss*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_wss*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_wss*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct snd_wss *chip = dev_id;
	unsigned char status;

	if (chip->hardware & WSS_HW_AD1848_MASK)
		/* pretend it was the only possible irq for AD1848 */
		status = CS4231_PLAYBACK_IRQ;
	else
		status = FUNC3(chip, CS4231_IRQ_STATUS);
	if (status & CS4231_TIMER_IRQ) {
		if (chip->timer)
			FUNC2(chip->timer, chip->timer->sticks);
	}
	if (chip->single_dma && chip->hardware != WSS_HW_INTERWAVE) {
		if (status & CS4231_PLAYBACK_IRQ) {
			if (chip->mode & WSS_MODE_PLAY) {
				if (chip->playback_substream)
					FUNC1(chip->playback_substream);
			}
			if (chip->mode & WSS_MODE_RECORD) {
				if (chip->capture_substream) {
					FUNC5(chip);
					FUNC1(chip->capture_substream);
				}
			}
		}
	} else {
		if (status & CS4231_PLAYBACK_IRQ) {
			if (chip->playback_substream)
				FUNC1(chip->playback_substream);
		}
		if (status & CS4231_RECORD_IRQ) {
			if (chip->capture_substream) {
				FUNC5(chip);
				FUNC1(chip->capture_substream);
			}
		}
	}

	FUNC6(&chip->reg_lock);
	status = ~CS4231_ALL_IRQS | ~status;
	if (chip->hardware & WSS_HW_AD1848_MASK)
		FUNC8(chip, FUNC0(STATUS), 0);
	else
		FUNC4(chip, CS4231_IRQ_STATUS, status);
	FUNC7(&chip->reg_lock);
	return IRQ_HANDLED;
}