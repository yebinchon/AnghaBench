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
 int MIGRATE_PCPTYPES ; 
 int MIGRATE_UNMOVABLE ; 
 int /*<<< orphan*/  PB_migrate ; 
 int /*<<< orphan*/  PB_migrate_end ; 
 scalar_t__ page_group_by_mobility_disabled ; 
 int /*<<< orphan*/  FUNC0 (struct page*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2(struct page *page, int migratetype)
{
	if (FUNC1(page_group_by_mobility_disabled &&
		     migratetype < MIGRATE_PCPTYPES))
		migratetype = MIGRATE_UNMOVABLE;

	FUNC0(page, (unsigned long)migratetype,
					PB_migrate, PB_migrate_end);
}