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
struct snd_wss {int hardware; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char CS4231_ENABLE_MIC_GAIN ; 
 int CS4231_INIT ; 
 int CS4231_LEFT_INPUT ; 
 int CS4231_MISC_INFO ; 
 int CS4231_MODE2 ; 
 int CS4231_RIGHT_INPUT ; 
 int CS4231_VERSION ; 
 int ENODEV ; 
 int /*<<< orphan*/  REGSEL ; 
 int /*<<< orphan*/  STATUS ; 
 unsigned short WSS_HW_AD1847 ; 
 unsigned short WSS_HW_AD1848 ; 
 unsigned short WSS_HW_CMI8330 ; 
 unsigned short WSS_HW_CS4248 ; 
 int WSS_HW_DETECT ; 
 int WSS_HW_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_wss*,int,int) ; 
 int FUNC5 (struct snd_wss*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int FUNC9 (struct snd_wss*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_wss*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct snd_wss *chip)
{
	unsigned long timeout = jiffies + FUNC3(1000);
	unsigned long flags;
	unsigned char r;
	unsigned short hardware = 0;
	int err = 0;
	int i;

	while (FUNC9(chip, FUNC0(REGSEL)) & CS4231_INIT) {
		if (FUNC8(jiffies, timeout))
			return -ENODEV;
		FUNC1();
	}
	FUNC6(&chip->reg_lock, flags);

	/* set CS423x MODE 1 */
	FUNC4(chip, CS4231_MISC_INFO, 0);

	FUNC4(chip, CS4231_RIGHT_INPUT, 0x45); /* 0x55 & ~0x10 */
	r = FUNC5(chip, CS4231_RIGHT_INPUT);
	if (r != 0x45) {
		/* RMGE always high on AD1847 */
		if ((r & ~CS4231_ENABLE_MIC_GAIN) != 0x45) {
			err = -ENODEV;
			goto out;
		}
		hardware = WSS_HW_AD1847;
	} else {
		FUNC4(chip, CS4231_LEFT_INPUT,  0xaa);
		r = FUNC5(chip, CS4231_LEFT_INPUT);
		/* L/RMGE always low on AT2320 */
		if ((r | CS4231_ENABLE_MIC_GAIN) != 0xaa) {
			err = -ENODEV;
			goto out;
		}
	}

	/* clear pending IRQ */
	FUNC9(chip, FUNC0(STATUS));
	FUNC10(chip, FUNC0(STATUS), 0);
	FUNC2();

	if ((chip->hardware & WSS_HW_TYPE_MASK) != WSS_HW_DETECT)
		goto out;

	if (hardware) {
		chip->hardware = hardware;
		goto out;
	}

	r = FUNC5(chip, CS4231_MISC_INFO);

	/* set CS423x MODE 2 */
	FUNC4(chip, CS4231_MISC_INFO, CS4231_MODE2);
	for (i = 0; i < 16; i++) {
		if (FUNC5(chip, i) != FUNC5(chip, 16 + i)) {
			/* we have more than 16 registers: check ID */
			if ((r & 0xf) != 0xa)
				goto out_mode;
			/*
			 * on CMI8330, CS4231_VERSION is volume control and
			 * can be set to 0
			 */
			FUNC4(chip, CS4231_VERSION, 0);
			r = FUNC5(chip, CS4231_VERSION) & 0xe7;
			if (!r)
				chip->hardware = WSS_HW_CMI8330;
			goto out_mode;
		}
	}
	if (r & 0x80)
		chip->hardware = WSS_HW_CS4248;
	else
		chip->hardware = WSS_HW_AD1848;
out_mode:
	FUNC4(chip, CS4231_MISC_INFO, 0);
out:
	FUNC7(&chip->reg_lock, flags);
	return err;
}