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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int KSYM_NAME_LEN ; 
 unsigned int FUNC1 (unsigned int,char*,int /*<<< orphan*/ ) ; 
 unsigned long kallsyms_num_syms ; 
 unsigned long FUNC2 (unsigned long) ; 
 int FUNC3 (int (*) (void*,char const*,struct module*,unsigned long),void*) ; 

int FUNC4(int (*fn)(void *, const char *, struct module *,
				      unsigned long),
			    void *data)
{
	char namebuf[KSYM_NAME_LEN];
	unsigned long i;
	unsigned int off;
	int ret;

	for (i = 0, off = 0; i < kallsyms_num_syms; i++) {
		off = FUNC1(off, namebuf, FUNC0(namebuf));
		ret = fn(data, namebuf, NULL, FUNC2(i));
		if (ret != 0)
			return ret;
	}
	return FUNC3(fn, data);
}