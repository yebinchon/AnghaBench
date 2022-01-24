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
 int KSYM_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long*,unsigned long*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long*,unsigned long*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long*,unsigned long*,int /*<<< orphan*/ *,char*) ; 

int FUNC4(unsigned long addr, unsigned long *symbolsize,
				unsigned long *offset)
{
	char namebuf[KSYM_NAME_LEN];

	if (FUNC2(addr)) {
		FUNC1(addr, symbolsize, offset);
		return 1;
	}
	return !!FUNC3(addr, symbolsize, offset, NULL, namebuf) ||
	       !!FUNC0(addr, symbolsize, offset, namebuf);
}