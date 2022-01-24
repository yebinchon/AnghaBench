#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_pcm_runtime {long period_size; int periods; long channels; scalar_t__ dma_addr; } ;
struct snd_at73c213 {int period; TYPE_2__* substream; int /*<<< orphan*/  lock; TYPE_1__* ssc; } ;
typedef  int irqreturn_t ;
struct TYPE_4__ {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMR ; 
 int /*<<< orphan*/  IMR_ENDTX ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  PDC_TNCR ; 
 int /*<<< orphan*/  PDC_TNPR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_runtime*,long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct snd_at73c213 *chip = dev_id;
	struct snd_pcm_runtime *runtime = chip->substream->runtime;
	u32 status;
	int offset;
	int block_size;
	int next_period;
	int retval = IRQ_NONE;

	FUNC3(&chip->lock);

	block_size = FUNC1(runtime, runtime->period_size);
	status = FUNC5(chip->ssc->regs, IMR);

	if (status & FUNC0(IMR_ENDTX)) {
		chip->period++;
		if (chip->period == runtime->periods)
			chip->period = 0;
		next_period = chip->period + 1;
		if (next_period == runtime->periods)
			next_period = 0;

		offset = block_size * next_period;

		FUNC6(chip->ssc->regs, PDC_TNPR,
				(long)runtime->dma_addr + offset);
		FUNC6(chip->ssc->regs, PDC_TNCR,
				runtime->period_size * runtime->channels);
		retval = IRQ_HANDLED;
	}

	FUNC5(chip->ssc->regs, IMR);
	FUNC4(&chip->lock);

	if (status & FUNC0(IMR_ENDTX))
		FUNC2(chip->substream);

	return retval;
}