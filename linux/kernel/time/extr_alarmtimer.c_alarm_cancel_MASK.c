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
struct alarm {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int FUNC0 (struct alarm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct alarm *alarm)
{
	for (;;) {
		int ret = FUNC0(alarm);
		if (ret >= 0)
			return ret;
		FUNC1(&alarm->timer);
	}
}