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
typedef  size_t u16 ;
struct echoaudio {TYPE_1__* comm_page; void** output_gain; } ;
typedef  void* s8 ;
struct TYPE_2__ {void** line_out_level; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 size_t FUNC0 (struct echoaudio*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC3(struct echoaudio *chip, u16 channel, s8 gain)
{
	if (FUNC1(channel >= FUNC0(chip)))
		return -EINVAL;

	if (FUNC2(chip))
		return -EIO;

	/* Save the new value */
	chip->output_gain[channel] = gain;
	chip->comm_page->line_out_level[channel] = gain;
	return 0;
}