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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  UNEVICTABLE_PGMUNLOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static void FUNC5(struct page *page)
{
	/*
	 * Optimization: if the page was mapped just once, that's our mapping
	 * and we don't need to check all the other vmas.
	 */
	if (FUNC2(page) > 1)
		FUNC4(page);

	/* Did try_to_unlock() succeed or punt? */
	if (!FUNC0(page))
		FUNC1(UNEVICTABLE_PGMUNLOCKED);

	FUNC3(page);
}