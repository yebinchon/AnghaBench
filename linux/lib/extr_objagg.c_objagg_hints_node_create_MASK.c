#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int user_count; } ;
struct objagg_obj {int /*<<< orphan*/  obj; TYPE_1__ stats; } ;
struct TYPE_5__ {unsigned int user_count; unsigned int delta_user_count; } ;
struct TYPE_6__ {int is_root; struct objagg_obj* objagg_obj; TYPE_2__ stats; } ;
struct objagg_hints_node {struct objagg_hints_node* parent; int /*<<< orphan*/  list; int /*<<< orphan*/  ht_node; TYPE_3__ stats_info; scalar_t__ root_id; int /*<<< orphan*/  obj; } ;
struct objagg_hints {int /*<<< orphan*/  node_count; int /*<<< orphan*/  node_list; int /*<<< orphan*/  ht_params; int /*<<< orphan*/  node_ht; int /*<<< orphan*/  root_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct objagg_hints_node* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct objagg_hints_node*) ; 
 struct objagg_hints_node* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct objagg_hints_node *
FUNC6(struct objagg_hints *objagg_hints,
			 struct objagg_obj *objagg_obj, size_t obj_size,
			 struct objagg_hints_node *parent_hnode)
{
	unsigned int user_count = objagg_obj->stats.user_count;
	struct objagg_hints_node *hnode;
	int err;

	hnode = FUNC2(sizeof(*hnode) + obj_size, GFP_KERNEL);
	if (!hnode)
		return FUNC0(-ENOMEM);
	FUNC4(hnode->obj, &objagg_obj->obj, obj_size);
	hnode->stats_info.stats.user_count = user_count;
	hnode->stats_info.stats.delta_user_count = user_count;
	if (parent_hnode) {
		parent_hnode->stats_info.stats.delta_user_count += user_count;
	} else {
		hnode->root_id = objagg_hints->root_count++;
		hnode->stats_info.is_root = true;
	}
	hnode->stats_info.objagg_obj = objagg_obj;

	err = FUNC5(&objagg_hints->node_ht, &hnode->ht_node,
				     objagg_hints->ht_params);
	if (err)
		goto err_ht_insert;

	FUNC3(&hnode->list, &objagg_hints->node_list);
	hnode->parent = parent_hnode;
	objagg_hints->node_count++;

	return hnode;

err_ht_insert:
	FUNC1(hnode);
	return FUNC0(err);
}