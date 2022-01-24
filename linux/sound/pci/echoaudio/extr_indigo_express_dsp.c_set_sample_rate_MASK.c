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
struct echoaudio {int sample_rate; TYPE_2__* comm_page; TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  control_register; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_VC_UPDATE_CLOCKS ; 
 int EINVAL ; 
 int EIO ; 
 int INDIGO_EXPRESS_32000 ; 
 int INDIGO_EXPRESS_44100 ; 
 int INDIGO_EXPRESS_48000 ; 
 int INDIGO_EXPRESS_CLOCK_MASK ; 
 int INDIGO_EXPRESS_DOUBLE_SPEED ; 
 int /*<<< orphan*/  FUNC0 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC6(struct echoaudio *chip, u32 rate)
{
	u32 clock, control_reg, old_control_reg;

	if (FUNC5(chip))
		return -EIO;

	old_control_reg = FUNC3(chip->comm_page->control_register);
	control_reg = old_control_reg & ~INDIGO_EXPRESS_CLOCK_MASK;

	switch (rate) {
	case 32000:
		clock = INDIGO_EXPRESS_32000;
		break;
	case 44100:
		clock = INDIGO_EXPRESS_44100;
		break;
	case 48000:
		clock = INDIGO_EXPRESS_48000;
		break;
	case 64000:
		clock = INDIGO_EXPRESS_32000|INDIGO_EXPRESS_DOUBLE_SPEED;
		break;
	case 88200:
		clock = INDIGO_EXPRESS_44100|INDIGO_EXPRESS_DOUBLE_SPEED;
		break;
	case 96000:
		clock = INDIGO_EXPRESS_48000|INDIGO_EXPRESS_DOUBLE_SPEED;
		break;
	default:
		return -EINVAL;
	}

	control_reg |= clock;
	if (control_reg != old_control_reg) {
		FUNC2(chip->card->dev,
			"set_sample_rate: %d clock %d\n", rate, clock);
		chip->comm_page->control_register = FUNC1(control_reg);
		chip->sample_rate = rate;
		FUNC0(chip);
		return FUNC4(chip, DSP_VC_UPDATE_CLOCKS);
	}
	return 0;
}