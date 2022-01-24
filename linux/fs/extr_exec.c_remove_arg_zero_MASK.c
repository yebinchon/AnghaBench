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
struct page {int dummy; } ;
struct linux_binprm {unsigned long p; int /*<<< orphan*/  argc; } ;

/* Variables and functions */
 int EFAULT ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 struct page* FUNC0 (struct linux_binprm*,unsigned long,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

int FUNC4(struct linux_binprm *bprm)
{
	int ret = 0;
	unsigned long offset;
	char *kaddr;
	struct page *page;

	if (!bprm->argc)
		return 0;

	do {
		offset = bprm->p & ~PAGE_MASK;
		page = FUNC0(bprm, bprm->p, 0);
		if (!page) {
			ret = -EFAULT;
			goto out;
		}
		kaddr = FUNC1(page);

		for (; offset < PAGE_SIZE && kaddr[offset];
				offset++, bprm->p++)
			;

		FUNC2(kaddr);
		FUNC3(page);
	} while (offset == PAGE_SIZE);

	bprm->p++;
	bprm->argc--;
	ret = 0;

out:
	return ret;
}