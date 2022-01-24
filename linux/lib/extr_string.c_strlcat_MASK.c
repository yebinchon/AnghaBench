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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

size_t FUNC3(char *dest, const char *src, size_t count)
{
	size_t dsize = FUNC2(dest);
	size_t len = FUNC2(src);
	size_t res = dsize + len;

	/* This would be a bug */
	FUNC0(dsize >= count);

	dest += dsize;
	count -= dsize;
	if (len >= count)
		len = count-1;
	FUNC1(dest, src, len);
	dest[len] = 0;
	return res;
}