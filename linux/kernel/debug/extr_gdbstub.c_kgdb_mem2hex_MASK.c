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
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char*,char*,int) ; 

char *FUNC2(char *mem, char *buf, int count)
{
	char *tmp;
	int err;

	/*
	 * We use the upper half of buf as an intermediate buffer for the
	 * raw memory copy.  Hex conversion will work against this one.
	 */
	tmp = buf + count;

	err = FUNC1(tmp, mem, count);
	if (err)
		return NULL;
	while (count > 0) {
		buf = FUNC0(buf, *tmp);
		tmp++;
		count--;
	}
	*buf = 0;

	return buf;
}