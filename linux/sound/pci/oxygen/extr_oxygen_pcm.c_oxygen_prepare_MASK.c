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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct oxygen {unsigned int interrupt_mask; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {scalar_t__ no_period_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXYGEN_DMA_FLUSH ; 
 int /*<<< orphan*/  OXYGEN_INTERRUPT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,int /*<<< orphan*/ ,unsigned int) ; 
 struct oxygen* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct oxygen *chip = FUNC4(substream);
	unsigned int channel = FUNC2(substream);
	unsigned int channel_mask = 1 << channel;

	FUNC5(&chip->reg_lock);
	FUNC1(chip, OXYGEN_DMA_FLUSH, channel_mask);
	FUNC0(chip, OXYGEN_DMA_FLUSH, channel_mask);

	if (substream->runtime->no_period_wakeup)
		chip->interrupt_mask &= ~channel_mask;
	else
		chip->interrupt_mask |= channel_mask;
	FUNC3(chip, OXYGEN_INTERRUPT_MASK, chip->interrupt_mask);
	FUNC6(&chip->reg_lock);
	return 0;
}