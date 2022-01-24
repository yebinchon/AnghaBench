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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __IPCT_MAX ; 
 int /*<<< orphan*/  event_extend ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(void)
{
	int ret = FUNC1(&event_extend);
	if (ret < 0)
		FUNC2("Unable to register event extension\n");

	FUNC0(__IPCT_MAX >= 16);	/* ctmask, missed use u16 */

	return ret;
}