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
struct cache_detail {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  others; } ;

/* Variables and functions */
 int /*<<< orphan*/  cache_cleaner ; 
 int /*<<< orphan*/  cache_list ; 
 int /*<<< orphan*/  cache_list_lock ; 
 int /*<<< orphan*/  FUNC0 (struct cache_detail*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cache_detail* current_detail ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct cache_detail *cd)
{
	FUNC0(cd);
	FUNC4(&cache_list_lock);
	FUNC4(&cd->hash_lock);
	if (current_detail == cd)
		current_detail = NULL;
	FUNC2(&cd->others);
	FUNC5(&cd->hash_lock);
	FUNC5(&cache_list_lock);
	if (FUNC3(&cache_list)) {
		/* module must be being unloaded so its safe to kill the worker */
		FUNC1(&cache_cleaner);
	}
}