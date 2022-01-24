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
struct rmap_walk_control {struct page* arg; int /*<<< orphan*/  rmap_one; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  remove_migration_pte ; 
 int /*<<< orphan*/  FUNC0 (struct page*,struct rmap_walk_control*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,struct rmap_walk_control*) ; 

void FUNC2(struct page *old, struct page *new, bool locked)
{
	struct rmap_walk_control rwc = {
		.rmap_one = remove_migration_pte,
		.arg = old,
	};

	if (locked)
		FUNC1(new, &rwc);
	else
		FUNC0(new, &rwc);
}