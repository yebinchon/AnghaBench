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
typedef  int u16 ;
struct echoaudio {int input_clock; TYPE_2__* card; int /*<<< orphan*/  digital_mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  sample_rate; TYPE_1__* comm_page; int /*<<< orphan*/  opencount; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  status_clocks; int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_MODE_ADAT ; 
 int EAGAIN ; 
#define  ECHO_CLOCK_ADAT 131 
#define  ECHO_CLOCK_INTERNAL 130 
#define  ECHO_CLOCK_SPDIF 129 
#define  ECHO_CLOCK_WORD 128 
 int EINVAL ; 
 int GML_ADAT_CLOCK ; 
 int GML_CLOCK_CLEAR_MASK ; 
 int GML_CLOCK_DETECT_BIT_SPDIF96 ; 
 int GML_CLOCK_DETECT_BIT_WORD96 ; 
 int GML_DOUBLE_SPEED_MODE ; 
 int GML_SPDIF_CLOCK ; 
 int GML_WORD_CLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct echoaudio*,int) ; 
 int FUNC8 (struct echoaudio*,int,int) ; 

__attribute__((used)) static int FUNC9(struct echoaudio *chip, u16 clock)
{
	u32 control_reg, clocks_from_dsp;
	int err;


	/* Prevent two simultaneous calls to switch_asic() */
	if (FUNC0(&chip->opencount))
		return -EAGAIN;

	/* Mask off the clock select bits */
	control_reg = FUNC3(chip->comm_page->control_register) &
		GML_CLOCK_CLEAR_MASK;
	clocks_from_dsp = FUNC3(chip->comm_page->status_clocks);

	switch (clock) {
	case ECHO_CLOCK_INTERNAL:
		chip->input_clock = ECHO_CLOCK_INTERNAL;
		return FUNC4(chip, chip->sample_rate);
	case ECHO_CLOCK_SPDIF:
		if (chip->digital_mode == DIGITAL_MODE_ADAT)
			return -EAGAIN;
		FUNC6(&chip->lock);
		err = FUNC7(chip, clocks_from_dsp &
				  GML_CLOCK_DETECT_BIT_SPDIF96);
		FUNC5(&chip->lock);
		if (err < 0)
			return err;
		control_reg |= GML_SPDIF_CLOCK;
		if (clocks_from_dsp & GML_CLOCK_DETECT_BIT_SPDIF96)
			control_reg |= GML_DOUBLE_SPEED_MODE;
		else
			control_reg &= ~GML_DOUBLE_SPEED_MODE;
		break;
	case ECHO_CLOCK_WORD:
		FUNC6(&chip->lock);
		err = FUNC7(chip, clocks_from_dsp &
				  GML_CLOCK_DETECT_BIT_WORD96);
		FUNC5(&chip->lock);
		if (err < 0)
			return err;
		control_reg |= GML_WORD_CLOCK;
		if (clocks_from_dsp & GML_CLOCK_DETECT_BIT_WORD96)
			control_reg |= GML_DOUBLE_SPEED_MODE;
		else
			control_reg &= ~GML_DOUBLE_SPEED_MODE;
		break;
	case ECHO_CLOCK_ADAT:
		FUNC1(chip->card->dev, "Set Mona clock to ADAT\n");
		if (chip->digital_mode != DIGITAL_MODE_ADAT)
			return -EAGAIN;
		control_reg |= GML_ADAT_CLOCK;
		control_reg &= ~GML_DOUBLE_SPEED_MODE;
		break;
	default:
		FUNC2(chip->card->dev,
			"Input clock 0x%x not supported for Mona\n", clock);
		return -EINVAL;
	}

	chip->input_clock = clock;
	return FUNC8(chip, control_reg, true);
}