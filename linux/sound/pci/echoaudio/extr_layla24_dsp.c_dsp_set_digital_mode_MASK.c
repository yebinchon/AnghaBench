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
 int /*<<< orphan*/  ECHO_CLOCK_ADAT ; 
 int /*<<< orphan*/  ECHO_CLOCK_INTERNAL ; 
 int /*<<< orphan*/  ECHO_CLOCK_SPDIF ; 
 int EINVAL ; 
 int EIO ; 
 short FW_LAYLA24_2A_ASIC ; 
 short FW_LAYLA24_2S_ASIC ; 
 int /*<<< orphan*/  GML_ADAT_MODE ; 
 int /*<<< orphan*/  GML_DIGITAL_MODE_CLEAR_MASK ; 
 int /*<<< orphan*/  GML_DOUBLE_SPEED_MODE ; 
 int /*<<< orphan*/  GML_SPDIF_OPTICAL_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct echoaudio*,short) ; 
 int FUNC7 (struct echoaudio*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct echoaudio *chip, u8 mode)
{
	u32 control_reg;
	int err, incompatible_clock;
	short asic;

	/* Set clock to "internal" if it's not compatible with the new mode */
	incompatible_clock = false;
	switch (mode) {
	case DIGITAL_MODE_SPDIF_OPTICAL:
	case DIGITAL_MODE_SPDIF_RCA:
		if (chip->input_clock == ECHO_CLOCK_ADAT)
			incompatible_clock = true;
		asic = FW_LAYLA24_2S_ASIC;
		break;
	case DIGITAL_MODE_ADAT:
		if (chip->input_clock == ECHO_CLOCK_SPDIF)
			incompatible_clock = true;
		asic = FW_LAYLA24_2A_ASIC;
		break;
	default:
		FUNC1(chip->card->dev,
			"Digital mode not supported: %d\n", mode);
		return -EINVAL;
	}

	if (incompatible_clock) {	/* Switch to 48KHz, internal */
		chip->sample_rate = 48000;
		FUNC4(&chip->lock);
		FUNC3(chip, ECHO_CLOCK_INTERNAL);
		FUNC5(&chip->lock);
	}

	/* switch_asic() can sleep */
	if (FUNC6(chip, asic) < 0)
		return -EIO;

	FUNC4(&chip->lock);

	/* Tweak the control register */
	control_reg = FUNC2(chip->comm_page->control_register);
	control_reg &= GML_DIGITAL_MODE_CLEAR_MASK;

	switch (mode) {
	case DIGITAL_MODE_SPDIF_OPTICAL:
		control_reg |= GML_SPDIF_OPTICAL_MODE;
		break;
	case DIGITAL_MODE_SPDIF_RCA:
		/* GML_SPDIF_OPTICAL_MODE bit cleared */
		break;
	case DIGITAL_MODE_ADAT:
		control_reg |= GML_ADAT_MODE;
		control_reg &= ~GML_DOUBLE_SPEED_MODE;
		break;
	}

	err = FUNC7(chip, control_reg, true);
	FUNC5(&chip->lock);
	if (err < 0)
		return err;
	chip->digital_mode = mode;

	FUNC0(chip->card->dev, "set_digital_mode to %d\n", mode);
	return incompatible_clock;
}