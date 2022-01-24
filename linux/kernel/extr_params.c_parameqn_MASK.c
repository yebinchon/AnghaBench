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
 scalar_t__ FUNC0 (char const) ; 

bool FUNC1(const char *a, const char *b, size_t n)
{
	size_t i;

	for (i = 0; i < n; i++) {
		if (FUNC0(a[i]) != FUNC0(b[i]))
			return false;
	}
	return true;
}