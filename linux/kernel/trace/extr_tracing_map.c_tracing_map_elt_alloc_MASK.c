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
struct tracing_map_elt {void* var_set; void* vars; void* fields; void* key; struct tracing_map* map; } ;
struct tracing_map {int key_size; TYPE_1__* ops; int /*<<< orphan*/  n_vars; int /*<<< orphan*/  n_fields; } ;
struct TYPE_2__ {int (* elt_alloc ) (struct tracing_map_elt*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 struct tracing_map_elt* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tracing_map_elt*) ; 
 int /*<<< orphan*/  FUNC4 (struct tracing_map_elt*) ; 
 int /*<<< orphan*/  FUNC5 (struct tracing_map_elt*) ; 

__attribute__((used)) static struct tracing_map_elt *FUNC6(struct tracing_map *map)
{
	struct tracing_map_elt *elt;
	int err = 0;

	elt = FUNC2(sizeof(*elt), GFP_KERNEL);
	if (!elt)
		return FUNC0(-ENOMEM);

	elt->map = map;

	elt->key = FUNC2(map->key_size, GFP_KERNEL);
	if (!elt->key) {
		err = -ENOMEM;
		goto free;
	}

	elt->fields = FUNC1(map->n_fields, sizeof(*elt->fields), GFP_KERNEL);
	if (!elt->fields) {
		err = -ENOMEM;
		goto free;
	}

	elt->vars = FUNC1(map->n_vars, sizeof(*elt->vars), GFP_KERNEL);
	if (!elt->vars) {
		err = -ENOMEM;
		goto free;
	}

	elt->var_set = FUNC1(map->n_vars, sizeof(*elt->var_set), GFP_KERNEL);
	if (!elt->var_set) {
		err = -ENOMEM;
		goto free;
	}

	FUNC5(elt);

	if (map->ops && map->ops->elt_alloc) {
		err = map->ops->elt_alloc(elt);
		if (err)
			goto free;
	}
	return elt;
 free:
	FUNC4(elt);

	return FUNC0(err);
}