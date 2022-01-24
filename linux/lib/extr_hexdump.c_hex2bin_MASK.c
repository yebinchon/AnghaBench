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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(u8 *dst, const char *src, size_t count)
{
	while (count--) {
		int hi = FUNC0(*src++);
		int lo = FUNC0(*src++);

		if ((hi < 0) || (lo < 0))
			return -EINVAL;

		*dst++ = (hi << 4) | lo;
	}
	return 0;
}