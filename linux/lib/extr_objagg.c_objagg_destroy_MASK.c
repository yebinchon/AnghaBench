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
struct objagg {scalar_t__ hints; int /*<<< orphan*/  obj_ht; int /*<<< orphan*/  obj_list; int /*<<< orphan*/  root_ida; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct objagg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct objagg*) ; 

void FUNC7(struct objagg *objagg)
{
	FUNC6(objagg);
	FUNC1(&objagg->root_ida);
	FUNC0(!FUNC3(&objagg->obj_list));
	FUNC5(&objagg->obj_ht);
	if (objagg->hints)
		FUNC4(objagg->hints);
	FUNC2(objagg);
}