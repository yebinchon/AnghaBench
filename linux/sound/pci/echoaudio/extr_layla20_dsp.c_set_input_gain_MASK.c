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
struct echoaudio {int* input_gain; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int* line_in_level; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ GL20_INPUT_GAIN_MAGIC_NUMBER ; 
 size_t FUNC0 (struct echoaudio*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC3(struct echoaudio *chip, u16 input, int gain)
{
	if (FUNC1(input >= FUNC0(chip)))
		return -EINVAL;

	if (FUNC2(chip))
		return -EIO;

	chip->input_gain[input] = gain;
	gain += GL20_INPUT_GAIN_MAGIC_NUMBER;
	chip->comm_page->line_in_level[input] = gain;
	return 0;
}