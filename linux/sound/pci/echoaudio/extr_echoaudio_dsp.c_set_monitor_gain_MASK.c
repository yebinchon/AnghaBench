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
struct echoaudio {TYPE_1__* comm_page; void*** monitor_gain; } ;
typedef  void* s8 ;
struct TYPE_2__ {void** monitors; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 size_t FUNC0 (struct echoaudio*,size_t,size_t) ; 
 size_t FUNC1 (struct echoaudio*) ; 
 size_t FUNC2 (struct echoaudio*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip, u16 output, u16 input,
			    s8 gain)
{
	if (FUNC3(output >= FUNC2(chip) ||
		    input >= FUNC1(chip)))
		return -EINVAL;

	if (FUNC4(chip))
		return -EIO;

	chip->monitor_gain[output][input] = gain;
	chip->comm_page->monitors[FUNC0(chip, output, input)] = gain;
	return 0;
}