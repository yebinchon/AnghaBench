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
struct snd_pcm_substream {int dummy; } ;
struct oxygen {unsigned int interrupt_mask; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXYGEN_DMA_FLUSH ; 
 int /*<<< orphan*/  OXYGEN_INTERRUPT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct snd_pcm_substream*) ; 
 struct oxygen* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct oxygen *chip = FUNC5(substream);
	unsigned int channel = FUNC2(substream);
	unsigned int channel_mask = 1 << channel;

	FUNC6(&chip->reg_lock);
	chip->interrupt_mask &= ~channel_mask;
	FUNC3(chip, OXYGEN_INTERRUPT_MASK, chip->interrupt_mask);

	FUNC1(chip, OXYGEN_DMA_FLUSH, channel_mask);
	FUNC0(chip, OXYGEN_DMA_FLUSH, channel_mask);
	FUNC7(&chip->reg_lock);

	return FUNC4(substream);
}