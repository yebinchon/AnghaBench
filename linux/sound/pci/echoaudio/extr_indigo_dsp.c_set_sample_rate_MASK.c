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
struct echoaudio {int sample_rate; TYPE_1__* comm_page; TYPE_2__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {void* control_register; void* sample_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_VC_UPDATE_CLOCKS ; 
 int EINVAL ; 
 int EIO ; 
 int MIA_32000 ; 
 int MIA_44100 ; 
 int MIA_48000 ; 
 int MIA_88200 ; 
 int MIA_96000 ; 
 int /*<<< orphan*/  FUNC0 (struct echoaudio*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC6(struct echoaudio *chip, u32 rate)
{
	u32 control_reg;

	switch (rate) {
	case 96000:
		control_reg = MIA_96000;
		break;
	case 88200:
		control_reg = MIA_88200;
		break;
	case 48000:
		control_reg = MIA_48000;
		break;
	case 44100:
		control_reg = MIA_44100;
		break;
	case 32000:
		control_reg = MIA_32000;
		break;
	default:
		FUNC2(chip->card->dev,
			"set_sample_rate: %d invalid!\n", rate);
		return -EINVAL;
	}

	/* Set the control register if it has changed */
	if (control_reg != FUNC3(chip->comm_page->control_register)) {
		if (FUNC5(chip))
			return -EIO;

		chip->comm_page->sample_rate = FUNC1(rate);	/* ignored by the DSP */
		chip->comm_page->control_register = FUNC1(control_reg);
		chip->sample_rate = rate;

		FUNC0(chip);
		return FUNC4(chip, DSP_VC_UPDATE_CLOCKS);
	}
	return 0;
}