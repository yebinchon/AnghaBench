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
struct bitmask {unsigned int size; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bitmask const*) ; 
 unsigned int FUNC1 (struct bitmask const*,unsigned int) ; 
 int FUNC2 (char*,int,unsigned int,unsigned int,int) ; 

int FUNC3(char *buf, int buflen, const struct bitmask *bmp)
{
	int len = 0;
	/* current bit is 'cur', most recently seen range is [rbot, rtop] */
	unsigned int cur, rbot, rtop;

	if (buflen > 0)
		*buf = 0;
	rbot = cur = FUNC0(bmp);
	while (cur < bmp->size) {
		rtop = cur;
		cur = FUNC1(bmp, cur+1);
		if (cur >= bmp->size || cur > rtop + 1) {
			len = FUNC2(buf, buflen, rbot, rtop, len);
			rbot = cur;
		}
	}
	return len;
}