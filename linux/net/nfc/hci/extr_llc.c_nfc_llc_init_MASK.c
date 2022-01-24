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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 

int FUNC3(void)
{
	int r;

	r = FUNC1();
	if (r)
		goto exit;

	r = FUNC2();
	if (r)
		goto exit;

	return 0;

exit:
	FUNC0();
	return r;
}