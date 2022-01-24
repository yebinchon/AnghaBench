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
struct snd_cs4231 {unsigned int mode; int* image; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 size_t CS4231_IFACE_CTRL ; 
 size_t CS4231_IRQ_STATUS ; 
 int CS4231_MODE_OPEN ; 
 int CS4231_PLAYBACK_ENABLE ; 
 int CS4231_PLAYBACK_PIO ; 
 int CS4231_RECORD_ENABLE ; 
 int CS4231_RECORD_PIO ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs4231*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_cs4231*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_cs4231*,size_t,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct snd_cs4231 *chip, unsigned int mode)
{
	unsigned long flags;

	FUNC2(&chip->open_mutex);
	chip->mode &= ~mode;
	if (chip->mode & CS4231_MODE_OPEN) {
		FUNC3(&chip->open_mutex);
		return;
	}
	FUNC4(chip, 1);

	/* disable IRQ */
	FUNC8(&chip->lock, flags);
	FUNC7(chip, CS4231_IRQ_STATUS, 0);
	FUNC1(chip, 0, FUNC0(chip, STATUS));	/* clear IRQ */
	FUNC1(chip, 0, FUNC0(chip, STATUS));	/* clear IRQ */

	/* now disable record & playback */

	if (chip->image[CS4231_IFACE_CTRL] &
	    (CS4231_PLAYBACK_ENABLE | CS4231_PLAYBACK_PIO |
	     CS4231_RECORD_ENABLE | CS4231_RECORD_PIO)) {
		FUNC9(&chip->lock, flags);
		FUNC6(chip);
		FUNC8(&chip->lock, flags);
		chip->image[CS4231_IFACE_CTRL] &=
			~(CS4231_PLAYBACK_ENABLE | CS4231_PLAYBACK_PIO |
			  CS4231_RECORD_ENABLE | CS4231_RECORD_PIO);
		FUNC7(chip, CS4231_IFACE_CTRL,
				chip->image[CS4231_IFACE_CTRL]);
		FUNC9(&chip->lock, flags);
		FUNC5(chip);
		FUNC8(&chip->lock, flags);
	}

	/* clear IRQ again */
	FUNC7(chip, CS4231_IRQ_STATUS, 0);
	FUNC1(chip, 0, FUNC0(chip, STATUS));	/* clear IRQ */
	FUNC1(chip, 0, FUNC0(chip, STATUS));	/* clear IRQ */
	FUNC9(&chip->lock, flags);

	FUNC4(chip, 0);

	chip->mode = 0;
	FUNC3(&chip->open_mutex);
}