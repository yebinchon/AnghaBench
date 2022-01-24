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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gfx_cur_rc6_ms ; 

int FUNC4(void)
{
	FILE *fp;
	int retval;

	fp = FUNC2("/sys/class/drm/card0/power/rc6_residency_ms", "r");

	retval = FUNC3(fp, "%lld", &gfx_cur_rc6_ms);
	if (retval != 1)
		FUNC0(1, "GFX rc6");

	FUNC1(fp);

	return 0;
}