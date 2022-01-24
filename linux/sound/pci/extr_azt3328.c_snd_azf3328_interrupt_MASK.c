#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct snd_azf3328 {TYPE_2__* card; TYPE_1__* rmidi; int /*<<< orphan*/  codecs; int /*<<< orphan*/  reg_lock; TYPE_3__* timer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  sticks; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDX_IO_IRQSTATUS ; 
 scalar_t__ IDX_IO_TIMER_VALUE ; 
 int IRQ_GAMEPORT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int IRQ_I2S_OUT ; 
 int IRQ_MPU401 ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IRQ_PLAYBACK ; 
 int IRQ_RECORDING ; 
 int IRQ_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct snd_azf3328*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_azf3328*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_azf3328*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_azf3328*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC9(int irq, void *dev_id)
{
	struct snd_azf3328 *chip = dev_id;
	u8 status;
	static unsigned long irq_count;

	status = FUNC1(chip, IDX_IO_IRQSTATUS);

        /* fast path out, to ease interrupt sharing */
	if (!(status &
		(IRQ_PLAYBACK|IRQ_RECORDING|IRQ_I2S_OUT
		|IRQ_GAMEPORT|IRQ_MPU401|IRQ_TIMER)
	))
		return IRQ_NONE; /* must be interrupt for another device */

	FUNC0(chip->card->dev,
		"irq_count %ld! IDX_IO_IRQSTATUS %04x\n",
			irq_count++ /* debug-only */,
			status);

	if (status & IRQ_TIMER) {
		/* dev_dbg(chip->card->dev, "timer %ld\n",
			snd_azf3328_codec_inl(chip, IDX_IO_TIMER_VALUE)
				& TIMER_VALUE_MASK
		); */
		if (chip->timer)
			FUNC6(chip->timer, chip->timer->sticks);
		/* ACK timer */
                FUNC7(&chip->reg_lock);
		FUNC2(chip, IDX_IO_TIMER_VALUE + 3, 0x07);
		FUNC8(&chip->reg_lock);
		FUNC0(chip->card->dev, "timer IRQ\n");
	}

	if (status & (IRQ_PLAYBACK|IRQ_RECORDING|IRQ_I2S_OUT))
		FUNC4(chip, chip->codecs, status);

	if (status & IRQ_GAMEPORT)
		FUNC3(chip);

	/* MPU401 has less critical IRQ requirements
	 * than timer and playback/recording, right? */
	if (status & IRQ_MPU401) {
		FUNC5(irq, chip->rmidi->private_data);

		/* hmm, do we have to ack the IRQ here somehow?
		 * If so, then I don't know how yet... */
		FUNC0(chip->card->dev, "MPU401 IRQ\n");
	}
	return IRQ_HANDLED;
}