#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hrtimer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hrtimer*) ; 
 int FUNC1 (struct hrtimer*) ; 

int FUNC2(struct hrtimer *timer)
{
	int ret;

	do {
		ret = FUNC1(timer);

		if (ret < 0)
			FUNC0(timer);
	} while (ret < 0);
	return ret;
}