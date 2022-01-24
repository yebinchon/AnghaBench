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
 int /*<<< orphan*/  FUNC0 (void*,void*,unsigned long) ; 
 void* FUNC1 (void const*,unsigned long,unsigned long,void*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static unsigned long FUNC3(void *dst_buff, const void *skb,
				  unsigned long off, unsigned long len)
{
	void *ptr = FUNC1(skb, off, len, dst_buff);

	if (FUNC2(!ptr))
		return len;
	if (ptr != dst_buff)
		FUNC0(dst_buff, ptr, len);

	return 0;
}