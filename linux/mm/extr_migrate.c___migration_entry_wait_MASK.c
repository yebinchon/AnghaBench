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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct mm_struct *mm, pte_t *ptep,
				spinlock_t *ptl)
{
	pte_t pte;
	swp_entry_t entry;
	struct page *page;

	FUNC7(ptl);
	pte = *ptep;
	if (!FUNC2(pte))
		goto out;

	entry = FUNC4(pte);
	if (!FUNC1(entry))
		goto out;

	page = FUNC3(entry);

	/*
	 * Once page cache replacement of page migration started, page_count
	 * is zero; but we must not call put_and_wait_on_page_locked() without
	 * a ref. Use get_page_unless_zero(), and just fault again if it fails.
	 */
	if (!FUNC0(page))
		goto out;
	FUNC5(ptep, ptl);
	FUNC6(page);
	return;
out:
	FUNC5(ptep, ptl);
}