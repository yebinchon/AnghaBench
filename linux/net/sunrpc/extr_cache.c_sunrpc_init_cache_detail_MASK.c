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
struct cache_detail {int last_warn; int /*<<< orphan*/  others; scalar_t__ last_close; int /*<<< orphan*/  writers; scalar_t__ entries; scalar_t__ nextcheck; int /*<<< orphan*/  queue; int /*<<< orphan*/  hash_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cache_cleaner ; 
 int /*<<< orphan*/  cache_list ; 
 int /*<<< orphan*/  cache_list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

void FUNC7(struct cache_detail *cd)
{
	FUNC5(&cd->hash_lock);
	FUNC0(&cd->queue);
	FUNC4(&cache_list_lock);
	cd->nextcheck = 0;
	cd->entries = 0;
	FUNC1(&cd->writers, 0);
	cd->last_close = 0;
	cd->last_warn = -1;
	FUNC2(&cd->others, &cache_list);
	FUNC6(&cache_list_lock);

	/* start the cleaning process */
	FUNC3(system_power_efficient_wq, &cache_cleaner, 0);
}