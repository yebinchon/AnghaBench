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
struct crush_choose_arg_map {int /*<<< orphan*/ * args; } ;
struct ceph_osdmap {int /*<<< orphan*/  crush_workspace_mutex; int /*<<< orphan*/  crush_workspace; TYPE_1__* crush; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  choose_args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CEPH_DEFAULT_CHOOSE_ARGS ; 
 int CEPH_PG_MAX_SIZE ; 
 int FUNC1 (TYPE_1__*,int,int,int*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct crush_choose_arg_map* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ceph_osdmap *map, int ruleno, int x,
		    int *result, int result_max,
		    const __u32 *weight, int weight_max,
		    s64 choose_args_index)
{
	struct crush_choose_arg_map *arg_map;
	int r;

	FUNC0(result_max > CEPH_PG_MAX_SIZE);

	arg_map = FUNC2(&map->crush->choose_args,
					choose_args_index);
	if (!arg_map)
		arg_map = FUNC2(&map->crush->choose_args,
						CEPH_DEFAULT_CHOOSE_ARGS);

	FUNC3(&map->crush_workspace_mutex);
	r = FUNC1(map->crush, ruleno, x, result, result_max,
			  weight, weight_max, map->crush_workspace,
			  arg_map ? arg_map->args : NULL);
	FUNC4(&map->crush_workspace_mutex);

	return r;
}