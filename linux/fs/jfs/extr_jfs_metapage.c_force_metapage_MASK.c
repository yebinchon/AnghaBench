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
struct metapage {int /*<<< orphan*/  flag; int /*<<< orphan*/  sb; struct page* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  META_forcewrite ; 
 int /*<<< orphan*/  META_sync ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct metapage*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 

void FUNC9(struct metapage *mp)
{
	struct page *page = mp->page;
	FUNC3("force_metapage: mp = 0x%p", mp);
	FUNC6(META_forcewrite, &mp->flag);
	FUNC0(META_sync, &mp->flag);
	FUNC1(page);
	FUNC4(page);
	FUNC7(page);
	if (FUNC8(page))
		FUNC2(mp->sb, "write_one_page() failed\n");
	FUNC0(META_forcewrite, &mp->flag);
	FUNC5(page);
}