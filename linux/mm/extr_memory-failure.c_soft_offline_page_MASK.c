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

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int MF_COUNT_INCREASED ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct page*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct page*) ; 
 unsigned long FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int FUNC10 (struct page*) ; 
 int FUNC11 (struct page*,int) ; 

int FUNC12(struct page *page, int flags)
{
	int ret;
	unsigned long pfn = FUNC4(page);

	if (FUNC3(page)) {
		FUNC5("soft_offline: %#lx page is device page\n",
				pfn);
		if (flags & MF_COUNT_INCREASED)
			FUNC9(page);
		return -EIO;
	}

	if (FUNC0(page)) {
		FUNC6("soft offline: %#lx page already poisoned\n", pfn);
		if (flags & MF_COUNT_INCREASED)
			FUNC7(page);
		return -EBUSY;
	}

	FUNC2();
	ret = FUNC1(page, pfn, flags);
	FUNC8();

	if (ret > 0)
		ret = FUNC11(page, flags);
	else if (ret == 0)
		ret = FUNC10(page);

	return ret;
}