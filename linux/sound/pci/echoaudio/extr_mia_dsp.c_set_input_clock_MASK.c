#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct echoaudio {int /*<<< orphan*/  sample_rate; scalar_t__ input_clock; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ECHO_CLOCK_INTERNAL ; 
 scalar_t__ ECHO_CLOCK_SPDIF ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct echoaudio *chip, u16 clock)
{
	FUNC0(chip->card->dev, "set_input_clock(%d)\n", clock);
	if (FUNC2(clock != ECHO_CLOCK_INTERNAL &&
		       clock != ECHO_CLOCK_SPDIF))
		return -EINVAL;

	chip->input_clock = clock;
	return FUNC1(chip, chip->sample_rate);
}