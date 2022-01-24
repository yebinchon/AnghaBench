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
struct echoaudio {scalar_t__ input_clock; int sample_rate; TYPE_1__* comm_page; TYPE_2__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {void* sample_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_VC_SET_LAYLA_SAMPLE_RATE ; 
 scalar_t__ ECHO_CLOCK_INTERNAL ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct echoaudio*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC7(struct echoaudio *chip, u32 rate)
{
	if (FUNC5(rate < 8000 || rate > 50000))
		return -EINVAL;

	/* Only set the clock for internal mode. Do not return failure,
	   simply treat it as a non-event. */
	if (chip->input_clock != ECHO_CLOCK_INTERNAL) {
		FUNC3(chip->card->dev,
			 "Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\n");
		chip->comm_page->sample_rate = FUNC1(rate);
		chip->sample_rate = rate;
		return 0;
	}

	if (FUNC6(chip))
		return -EIO;

	FUNC2(chip->card->dev, "set_sample_rate(%d)\n", rate);
	chip->sample_rate = rate;
	chip->comm_page->sample_rate = FUNC1(rate);
	FUNC0(chip);
	return FUNC4(chip, DSP_VC_SET_LAYLA_SAMPLE_RATE);
}