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
struct debug_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ODEBUG_FREE_WORK_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct debug_obj*) ; 
 int /*<<< orphan*/  debug_obj_work ; 
 int /*<<< orphan*/  obj_freeing ; 
 scalar_t__ obj_nr_tofree ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct debug_obj *obj)
{
	FUNC1(obj);
	if (!obj_freeing && obj_nr_tofree) {
		FUNC0(obj_freeing, true);
		FUNC2(&debug_obj_work, ODEBUG_FREE_WORK_DELAY);
	}
}