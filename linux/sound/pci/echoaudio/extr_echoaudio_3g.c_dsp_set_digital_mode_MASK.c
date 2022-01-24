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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct echoaudio {int sample_rate; int digital_mode; TYPE_2__* card; int /*<<< orphan*/  lock; TYPE_1__* comm_page; int /*<<< orphan*/  input_clock; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
#define  DIGITAL_MODE_ADAT 130 
#define  DIGITAL_MODE_SPDIF_OPTICAL 129 
#define  DIGITAL_MODE_SPDIF_RCA 128 
 int /*<<< orphan*/  E3G_ADAT_MODE ; 
 int /*<<< orphan*/  E3G_DIGITAL_MODE_CLEAR_MASK ; 
 int /*<<< orphan*/  E3G_DOUBLE_SPEED_MODE ; 
 int /*<<< orphan*/  E3G_SPDIF_OPTICAL_MODE ; 
 int /*<<< orphan*/  ECHO_CLOCK_ADAT ; 
 int /*<<< orphan*/  ECHO_CLOCK_INTERNAL ; 
 int /*<<< orphan*/  ECHO_CLOCK_SPDIF ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct echoaudio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct echoaudio *chip, u8 mode)
{
	u32 control_reg;
	int err, incompatible_clock;

	/* Set clock to "internal" if it's not compatible with the new mode */
	incompatible_clock = false;
	switch (mode) {
	case DIGITAL_MODE_SPDIF_OPTICAL:
	case DIGITAL_MODE_SPDIF_RCA:
		if (chip->input_clock == ECHO_CLOCK_ADAT)
			incompatible_clock = true;
		break;
	case DIGITAL_MODE_ADAT:
		if (chip->input_clock == ECHO_CLOCK_SPDIF)
			incompatible_clock = true;
		break;
	default:
		FUNC1(chip->card->dev,
			"Digital mode not supported: %d\n", mode);
		return -EINVAL;
	}

	FUNC5(&chip->lock);

	if (incompatible_clock) {
		chip->sample_rate = 48000;
		FUNC4(chip, ECHO_CLOCK_INTERNAL);
	}

	/* Clear the current digital mode */
	control_reg = FUNC3(chip->comm_page->control_register);
	control_reg &= E3G_DIGITAL_MODE_CLEAR_MASK;

	/* Tweak the control reg */
	switch (mode) {
	case DIGITAL_MODE_SPDIF_OPTICAL:
		control_reg |= E3G_SPDIF_OPTICAL_MODE;
		break;
	case DIGITAL_MODE_SPDIF_RCA:
		/* E3G_SPDIF_OPTICAL_MODE bit cleared */
		break;
	case DIGITAL_MODE_ADAT:
		control_reg |= E3G_ADAT_MODE;
		control_reg &= ~E3G_DOUBLE_SPEED_MODE;	/* @@ useless */
		break;
	}

	err = FUNC7(chip, control_reg, FUNC2(chip), 1);
	FUNC6(&chip->lock);
	if (err < 0)
		return err;
	chip->digital_mode = mode;

	FUNC0(chip->card->dev, "set_digital_mode(%d)\n", chip->digital_mode);
	return incompatible_clock;
}