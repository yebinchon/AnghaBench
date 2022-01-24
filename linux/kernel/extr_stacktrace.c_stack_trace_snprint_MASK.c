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
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (char*,size_t,char*,int,char,void*) ; 

int FUNC2(char *buf, size_t size, const unsigned long *entries,
			unsigned int nr_entries, int spaces)
{
	unsigned int generated, i, total = 0;

	if (FUNC0(!entries))
		return 0;

	for (i = 0; i < nr_entries && size; i++) {
		generated = FUNC1(buf, size, "%*c%pS\n", 1 + spaces, ' ',
				     (void *)entries[i]);

		total += generated;
		if (generated >= size) {
			buf += size;
			size = 0;
		} else {
			buf += generated;
			size -= generated;
		}
	}

	return total;
}