#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct objagg_obj {int /*<<< orphan*/  list; int /*<<< orphan*/  ht_node; int /*<<< orphan*/  obj; } ;
struct objagg {int /*<<< orphan*/  obj_count; int /*<<< orphan*/  obj_list; int /*<<< orphan*/  ht_params; int /*<<< orphan*/  obj_ht; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ obj_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct objagg_obj* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct objagg_obj*) ; 
 struct objagg_obj* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct objagg*,struct objagg_obj*) ; 
 int FUNC6 (struct objagg*,struct objagg_obj*) ; 
 int /*<<< orphan*/  FUNC7 (struct objagg_obj*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct objagg*,struct objagg_obj*) ; 

__attribute__((used)) static struct objagg_obj *FUNC10(struct objagg *objagg, void *obj)
{
	struct objagg_obj *objagg_obj;
	int err;

	objagg_obj = FUNC2(sizeof(*objagg_obj) + objagg->ops->obj_size,
			     GFP_KERNEL);
	if (!objagg_obj)
		return FUNC0(-ENOMEM);
	FUNC7(objagg_obj);
	FUNC4(objagg_obj->obj, obj, objagg->ops->obj_size);

	err = FUNC6(objagg, objagg_obj);
	if (err)
		goto err_obj_init;

	err = FUNC8(&objagg->obj_ht, &objagg_obj->ht_node,
				     objagg->ht_params);
	if (err)
		goto err_ht_insert;
	FUNC3(&objagg_obj->list, &objagg->obj_list);
	objagg->obj_count++;
	FUNC9(objagg, objagg_obj);

	return objagg_obj;

err_ht_insert:
	FUNC5(objagg, objagg_obj);
err_obj_init:
	FUNC1(objagg_obj);
	return FUNC0(err);
}