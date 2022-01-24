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
 char* FUNC0 (unsigned long,unsigned long*,unsigned long*,char**,char*) ; 
 char* FUNC1 (unsigned long,unsigned long*,unsigned long*,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long,unsigned long*,unsigned long*) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC6 (unsigned long,unsigned long*,unsigned long*,char**,char*) ; 

const char *FUNC7(unsigned long addr,
			    unsigned long *symbolsize,
			    unsigned long *offset,
			    char **modname, char *namebuf)
{
	const char *ret;

	namebuf[KSYM_NAME_LEN - 1] = 0;
	namebuf[0] = 0;

	if (FUNC4(addr)) {
		unsigned long pos;

		pos = FUNC3(addr, symbolsize, offset);
		/* Grab name */
		FUNC5(FUNC2(pos),
				       namebuf, KSYM_NAME_LEN);
		if (modname)
			*modname = NULL;
		return namebuf;
	}

	/* See if it's in a module or a BPF JITed image. */
	ret = FUNC6(addr, symbolsize, offset,
				    modname, namebuf);
	if (!ret)
		ret = FUNC0(addr, symbolsize,
					 offset, modname, namebuf);

	if (!ret)
		ret = FUNC1(addr, symbolsize,
						offset, modname, namebuf);
	return ret;
}