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
struct echoaudio {int input_clock; TYPE_2__* card; int /*<<< orphan*/  digital_mode; int /*<<< orphan*/  sample_rate; TYPE_1__* comm_page; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  status_clocks; int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_MODE_ADAT ; 
 int EAGAIN ; 
#define  ECHO_CLOCK_ADAT 132 
#define  ECHO_CLOCK_ESYNC 131 
#define  ECHO_CLOCK_ESYNC96 130 
#define  ECHO_CLOCK_INTERNAL 129 
#define  ECHO_CLOCK_SPDIF 128 
 int EINVAL ; 
 int GML_ADAT_CLOCK ; 
 int GML_CLOCK_CLEAR_MASK ; 
 int GML_CLOCK_DETECT_BIT_SPDIF96 ; 
 int GML_DOUBLE_SPEED_MODE ; 
 int GML_ESYNC_CLOCK ; 
 int GML_SPDIF_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct echoaudio*,int,int) ; 

__attribute__((used)) static int FUNC4(struct echoaudio *chip, u16 clock)
{
	u32 control_reg, clocks_from_dsp;


	/* Mask off the clock select bits */
	control_reg = FUNC1(chip->comm_page->control_register) &
		GML_CLOCK_CLEAR_MASK;
	clocks_from_dsp = FUNC1(chip->comm_page->status_clocks);

	switch (clock) {
	case ECHO_CLOCK_INTERNAL:
		chip->input_clock = ECHO_CLOCK_INTERNAL;
		return FUNC2(chip, chip->sample_rate);
	case ECHO_CLOCK_SPDIF:
		if (chip->digital_mode == DIGITAL_MODE_ADAT)
			return -EAGAIN;
		control_reg |= GML_SPDIF_CLOCK;
		if (clocks_from_dsp & GML_CLOCK_DETECT_BIT_SPDIF96)
			control_reg |= GML_DOUBLE_SPEED_MODE;
		else
			control_reg &= ~GML_DOUBLE_SPEED_MODE;
		break;
	case ECHO_CLOCK_ADAT:
		if (chip->digital_mode != DIGITAL_MODE_ADAT)
			return -EAGAIN;
		control_reg |= GML_ADAT_CLOCK;
		control_reg &= ~GML_DOUBLE_SPEED_MODE;
		break;
	case ECHO_CLOCK_ESYNC:
		control_reg |= GML_ESYNC_CLOCK;
		control_reg &= ~GML_DOUBLE_SPEED_MODE;
		break;
	case ECHO_CLOCK_ESYNC96:
		control_reg |= GML_ESYNC_CLOCK | GML_DOUBLE_SPEED_MODE;
		break;
	default:
		FUNC0(chip->card->dev,
			"Input clock 0x%x not supported for Gina24\n", clock);
		return -EINVAL;
	}

	chip->input_clock = clock;
	return FUNC3(chip, control_reg, true);
}