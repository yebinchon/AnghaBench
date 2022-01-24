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
typedef  size_t u32 ;
struct crush_map {size_t max_buckets; int /*<<< orphan*/  choose_args; TYPE_1__** buckets; } ;
struct crush_choose_arg_map {size_t size; struct crush_choose_arg* args; int /*<<< orphan*/  choose_args_index; } ;
struct crush_choose_arg {scalar_t__ ids_size; } ;
struct TYPE_2__ {scalar_t__ size; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 struct crush_choose_arg_map* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (void**,void*,struct crush_choose_arg*) ; 
 int /*<<< orphan*/  e_inval ; 
 int /*<<< orphan*/  FUNC4 (struct crush_choose_arg_map*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct crush_choose_arg_map*) ; 
 struct crush_choose_arg* FUNC6 (size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void **p, void *end, struct crush_map *c)
{
	struct crush_choose_arg_map *arg_map = NULL;
	u32 num_choose_arg_maps, num_buckets;
	int ret;

	FUNC1(p, end, num_choose_arg_maps, e_inval);
	while (num_choose_arg_maps--) {
		arg_map = FUNC0();
		if (!arg_map) {
			ret = -ENOMEM;
			goto fail;
		}

		FUNC2(p, end, arg_map->choose_args_index,
				    e_inval);
		arg_map->size = c->max_buckets;
		arg_map->args = FUNC6(arg_map->size, sizeof(*arg_map->args),
					GFP_NOIO);
		if (!arg_map->args) {
			ret = -ENOMEM;
			goto fail;
		}

		FUNC1(p, end, num_buckets, e_inval);
		while (num_buckets--) {
			struct crush_choose_arg *arg;
			u32 bucket_index;

			FUNC1(p, end, bucket_index, e_inval);
			if (bucket_index >= arg_map->size)
				goto e_inval;

			arg = &arg_map->args[bucket_index];
			ret = FUNC3(p, end, arg);
			if (ret)
				goto fail;

			if (arg->ids_size &&
			    arg->ids_size != c->buckets[bucket_index]->size)
				goto e_inval;
		}

		FUNC5(&c->choose_args, arg_map);
	}

	return 0;

e_inval:
	ret = -EINVAL;
fail:
	FUNC4(arg_map);
	return ret;
}