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
struct linux_binprm {unsigned long p; int /*<<< orphan*/ * page; } ;

/* Variables and functions */
 int EFAULT ; 
 int MAX_ARG_PAGES ; 
 unsigned int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC0 (void*,char*,unsigned int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct linux_binprm *bprm,
			   unsigned long *sp_location)
{
	unsigned long index, stop, sp;
	int ret = 0;

	stop = bprm->p >> PAGE_SHIFT;
	sp = *sp_location;

	for (index = MAX_ARG_PAGES - 1; index >= stop; index--) {
		unsigned int offset = index == stop ? bprm->p & ~PAGE_MASK : 0;
		char *src = FUNC1(bprm->page[index]) + offset;
		sp -= PAGE_SIZE - offset;
		if (FUNC0((void *) sp, src, PAGE_SIZE - offset) != 0)
			ret = -EFAULT;
		FUNC2(bprm->page[index]);
		if (ret)
			goto out;
	}

	*sp_location = sp;

out:
	return ret;
}