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
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  ntfschar ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 

int FUNC1(const ntfschar *s1, const ntfschar *s2, size_t n)
{
	u16 c1, c2;
	size_t i;

	for (i = 0; i < n; ++i) {
		c1 = FUNC0(s1[i]);
		c2 = FUNC0(s2[i]);
		if (c1 < c2)
			return -1;
		if (c1 > c2)
			return 1;
		if (!c1)
			break;
	}
	return 0;
}