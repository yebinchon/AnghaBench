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
struct echoaudio {scalar_t__ input_clock; int sample_rate; scalar_t__ digital_mode; TYPE_2__* card; TYPE_1__* comm_page; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {void* sample_rate; int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 scalar_t__ DIGITAL_MODE_ADAT ; 
 int E3G_32KHZ ; 
 int E3G_44KHZ ; 
 int E3G_48KHZ ; 
 int E3G_88KHZ ; 
 int E3G_96KHZ ; 
 int E3G_CLOCK_CLEAR_MASK ; 
 int E3G_CONTINUOUS_CLOCK ; 
 int E3G_DOUBLE_SPEED_MODE ; 
 int E3G_FREQ_REG_MAX ; 
 int E3G_MAGIC_NUMBER ; 
 scalar_t__ ECHO_CLOCK_INTERNAL ; 
 int EINVAL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct echoaudio*,scalar_t__) ; 
 int FUNC5 (struct echoaudio*,int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct echoaudio*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct echoaudio *chip, u32 rate)
{
	u32 control_reg, clock, base_rate, frq_reg;

	/* Only set the clock for internal mode. */
	if (chip->input_clock != ECHO_CLOCK_INTERNAL) {
		FUNC2(chip->card->dev,
			 "Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\n");
		/* Save the rate anyhow */
		chip->comm_page->sample_rate = FUNC0(rate);
		chip->sample_rate = rate;
		FUNC4(chip, chip->input_clock);
		return 0;
	}

	if (FUNC6(rate >= 50000 &&
		       chip->digital_mode == DIGITAL_MODE_ADAT))
		return -EINVAL;

	clock = 0;
	control_reg = FUNC3(chip->comm_page->control_register);
	control_reg &= E3G_CLOCK_CLEAR_MASK;

	switch (rate) {
	case 96000:
		clock = E3G_96KHZ;
		break;
	case 88200:
		clock = E3G_88KHZ;
		break;
	case 48000:
		clock = E3G_48KHZ;
		break;
	case 44100:
		clock = E3G_44KHZ;
		break;
	case 32000:
		clock = E3G_32KHZ;
		break;
	default:
		clock = E3G_CONTINUOUS_CLOCK;
		if (rate > 50000)
			clock |= E3G_DOUBLE_SPEED_MODE;
		break;
	}

	control_reg |= clock;
	control_reg = FUNC5(chip, control_reg, rate);

	base_rate = rate;
	if (base_rate > 50000)
		base_rate /= 2;
	if (base_rate < 32000)
		base_rate = 32000;

	frq_reg = E3G_MAGIC_NUMBER / base_rate - 2;
	if (frq_reg > E3G_FREQ_REG_MAX)
		frq_reg = E3G_FREQ_REG_MAX;

	chip->comm_page->sample_rate = FUNC0(rate);	/* ignored by the DSP */
	chip->sample_rate = rate;
	FUNC1(chip->card->dev,
		"SetSampleRate: %d clock %x\n", rate, control_reg);

	/* Tell the DSP about it - DSP reads both control reg & freq reg */
	return FUNC7(chip, control_reg, frq_reg, 0);
}