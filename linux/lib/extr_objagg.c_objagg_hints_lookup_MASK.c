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
struct objagg_hints_node {int dummy; } ;
struct objagg_hints {int /*<<< orphan*/  ht_params; int /*<<< orphan*/  node_ht; } ;

/* Variables and functions */
 struct objagg_hints_node* FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct objagg_hints_node *
FUNC1(struct objagg_hints *objagg_hints, void *obj)
{
	if (!objagg_hints)
		return NULL;
	return FUNC0(&objagg_hints->node_ht, obj,
				      objagg_hints->ht_params);
}