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
struct snd_cs4231 {unsigned int mode; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS4231_IRQ_STATUS ; 
 int CS4231_MODE_OPEN ; 
 int CS4231_PLAYBACK_IRQ ; 
 int CS4231_RECORD_IRQ ; 
 int CS4231_TIMER_IRQ ; 
 int EAGAIN ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs4231*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_cs4231*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct snd_cs4231 *chip, unsigned int mode)
{
	unsigned long flags;

	FUNC2(&chip->open_mutex);
	if ((chip->mode & mode)) {
		FUNC3(&chip->open_mutex);
		return -EAGAIN;
	}
	if (chip->mode & CS4231_MODE_OPEN) {
		chip->mode |= mode;
		FUNC3(&chip->open_mutex);
		return 0;
	}
	/* ok. now enable and ack CODEC IRQ */
	FUNC5(&chip->lock, flags);
	FUNC4(chip, CS4231_IRQ_STATUS, CS4231_PLAYBACK_IRQ |
		       CS4231_RECORD_IRQ |
		       CS4231_TIMER_IRQ);
	FUNC4(chip, CS4231_IRQ_STATUS, 0);
	FUNC1(chip, 0, FUNC0(chip, STATUS));	/* clear IRQ */
	FUNC1(chip, 0, FUNC0(chip, STATUS));	/* clear IRQ */

	FUNC4(chip, CS4231_IRQ_STATUS, CS4231_PLAYBACK_IRQ |
		       CS4231_RECORD_IRQ |
		       CS4231_TIMER_IRQ);
	FUNC4(chip, CS4231_IRQ_STATUS, 0);

	FUNC6(&chip->lock, flags);

	chip->mode = mode;
	FUNC3(&chip->open_mutex);
	return 0;
}