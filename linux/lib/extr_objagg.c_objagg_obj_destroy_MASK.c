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
struct objagg_obj {int /*<<< orphan*/  ht_node; int /*<<< orphan*/  list; } ;
struct objagg {int /*<<< orphan*/  ht_params; int /*<<< orphan*/  obj_ht; int /*<<< orphan*/  obj_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct objagg_obj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct objagg*,struct objagg_obj*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct objagg*,struct objagg_obj*) ; 

__attribute__((used)) static void FUNC5(struct objagg *objagg,
			       struct objagg_obj *objagg_obj)
{
	FUNC4(objagg, objagg_obj);
	--objagg->obj_count;
	FUNC1(&objagg_obj->list);
	FUNC3(&objagg->obj_ht, &objagg_obj->ht_node,
			       objagg->ht_params);
	FUNC2(objagg, objagg_obj);
	FUNC0(objagg_obj);
}