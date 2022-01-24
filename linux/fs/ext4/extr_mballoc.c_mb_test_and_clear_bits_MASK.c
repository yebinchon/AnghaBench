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
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 

__attribute__((used)) static int FUNC2(void *bm, int cur, int len)
{
	__u32 *addr;
	int zero_bit = -1;

	len = cur + len;
	while (cur < len) {
		if ((cur & 31) == 0 && (len - cur) >= 32) {
			/* fast path: clear whole word at once */
			addr = bm + (cur >> 3);
			if (*addr != (__u32)(-1) && zero_bit == -1)
				zero_bit = cur + FUNC0(addr, 32, 0);
			*addr = 0;
			cur += 32;
			continue;
		}
		if (!FUNC1(cur, bm) && zero_bit == -1)
			zero_bit = cur;
		cur++;
	}

	return zero_bit;
}