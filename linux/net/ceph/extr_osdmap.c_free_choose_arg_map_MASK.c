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
struct crush_choose_arg_map {int size; int weight_set_size; struct crush_choose_arg_map* args; struct crush_choose_arg_map* ids; struct crush_choose_arg_map* weight_set; struct crush_choose_arg_map* weights; int /*<<< orphan*/  node; } ;
struct crush_choose_arg {int size; int weight_set_size; struct crush_choose_arg* args; struct crush_choose_arg* ids; struct crush_choose_arg* weight_set; struct crush_choose_arg* weights; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct crush_choose_arg_map*) ; 

__attribute__((used)) static void FUNC3(struct crush_choose_arg_map *arg_map)
{
	if (arg_map) {
		int i, j;

		FUNC1(!FUNC0(&arg_map->node));

		for (i = 0; i < arg_map->size; i++) {
			struct crush_choose_arg *arg = &arg_map->args[i];

			for (j = 0; j < arg->weight_set_size; j++)
				FUNC2(arg->weight_set[j].weights);
			FUNC2(arg->weight_set);
			FUNC2(arg->ids);
		}
		FUNC2(arg_map->args);
		FUNC2(arg_map);
	}
}