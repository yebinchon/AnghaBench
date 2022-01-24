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
typedef  unsigned long u64 ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENXIO ; 
 int EPERM ; 
 int /*<<< orphan*/  MF_COUNT_INCREASED ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  hwpoison_filter_enable ; 
 int FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 struct page* FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(void *data, u64 val)
{
	unsigned long pfn = val;
	struct page *p;
	struct page *hpage;
	int err;

	if (!FUNC2(CAP_SYS_ADMIN))
		return -EPERM;

	if (!FUNC8(pfn))
		return -ENXIO;

	p = FUNC7(pfn);
	hpage = FUNC3(p);
	/*
	 * This implies unable to support free buddy pages.
	 */
	if (!FUNC4(p))
		return 0;

	if (!hwpoison_filter_enable)
		goto inject;

	FUNC11(hpage, 0);
	/*
	 * This implies unable to support non-LRU pages.
	 */
	if (!FUNC1(hpage) && !FUNC0(p))
		goto put_out;

	/*
	 * do a racy check with elevated page count, to make sure PG_hwpoison
	 * will only be set for the targeted owner (or on a free page).
	 * memory_failure() will redo the check reliably inside page lock.
	 */
	err = FUNC5(hpage);
	if (err)
		goto put_out;

inject:
	FUNC9("Injecting memory failure at pfn %#lx\n", pfn);
	return FUNC6(pfn, MF_COUNT_INCREASED);
put_out:
	FUNC10(p);
	return 0;
}