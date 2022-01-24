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
struct address_space {int dummy; } ;
typedef  enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MIGRATEPAGE_SUCCESS ; 
 int MIGRATE_SYNC_NO_COPY ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct page*) ; 
 int FUNC3 (struct address_space*,struct page*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,struct page*) ; 

int FUNC5(struct address_space *mapping,
		struct page *newpage, struct page *page,
		enum migrate_mode mode)
{
	int rc;

	FUNC0(FUNC1(page));	/* Writeback must be complete */

	rc = FUNC3(mapping, newpage, page, 0);

	if (rc != MIGRATEPAGE_SUCCESS)
		return rc;

	if (mode != MIGRATE_SYNC_NO_COPY)
		FUNC2(newpage, page);
	else
		FUNC4(newpage, page);
	return MIGRATEPAGE_SUCCESS;
}