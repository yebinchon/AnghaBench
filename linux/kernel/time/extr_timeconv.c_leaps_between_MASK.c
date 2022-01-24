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
 long FUNC0 (long,int) ; 

__attribute__((used)) static long FUNC1(long y1, long y2)
{
	long leaps1 = FUNC0(y1 - 1, 4) - FUNC0(y1 - 1, 100)
		+ FUNC0(y1 - 1, 400);
	long leaps2 = FUNC0(y2 - 1, 4) - FUNC0(y2 - 1, 100)
		+ FUNC0(y2 - 1, 400);
	return leaps2 - leaps1;
}