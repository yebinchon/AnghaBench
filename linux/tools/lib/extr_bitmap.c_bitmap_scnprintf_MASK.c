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
 int FUNC0 (unsigned long*,int) ; 
 int FUNC1 (unsigned long*,int,int) ; 
 scalar_t__ FUNC2 (char*,size_t,char*,...) ; 

size_t FUNC3(unsigned long *bitmap, int nbits,
			char *buf, size_t size)
{
	/* current bit is 'cur', most recently seen range is [rbot, rtop] */
	int cur, rbot, rtop;
	bool first = true;
	size_t ret = 0;

	rbot = cur = FUNC0(bitmap, nbits);
	while (cur < nbits) {
		rtop = cur;
		cur = FUNC1(bitmap, nbits, cur + 1);
		if (cur < nbits && cur <= rtop + 1)
			continue;

		if (!first)
			ret += FUNC2(buf + ret, size - ret, ",");

		first = false;

		ret += FUNC2(buf + ret, size - ret, "%d", rbot);
		if (rbot < rtop)
			ret += FUNC2(buf + ret, size - ret, "-%d", rtop);

		rbot = cur;
	}
	return ret;
}