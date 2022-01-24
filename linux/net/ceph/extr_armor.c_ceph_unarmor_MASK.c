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
 int EINVAL ; 
 int FUNC0 (char const) ; 

int FUNC1(char *dst, const char *src, const char *end)
{
	int olen = 0;

	while (src < end) {
		int a, b, c, d;

		if (src[0] == '\n') {
			src++;
			continue;
		}
		if (src + 4 > end)
			return -EINVAL;
		a = FUNC0(src[0]);
		b = FUNC0(src[1]);
		c = FUNC0(src[2]);
		d = FUNC0(src[3]);
		if (a < 0 || b < 0 || c < 0 || d < 0)
			return -EINVAL;

		*dst++ = (a << 2) | (b >> 4);
		if (src[2] == '=')
			return olen + 1;
		*dst++ = ((b & 15) << 4) | (c >> 2);
		if (src[3] == '=')
			return olen + 2;
		*dst++ = ((c & 3) << 6) | d;
		olen += 3;
		src += 4;
	}
	return olen;
}