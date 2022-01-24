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
struct TYPE_5__ {scalar_t__ src; scalar_t__ dst; } ;
struct TYPE_4__ {scalar_t__ src; scalar_t__ dst; } ;
struct TYPE_6__ {TYPE_2__ tp_max; TYPE_1__ tp_min; } ;
struct fl_flow_mask {int /*<<< orphan*/  ht; int /*<<< orphan*/  list; int /*<<< orphan*/  ht_node; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  filters; TYPE_3__ key; int /*<<< orphan*/  dissector; int /*<<< orphan*/  flags; } ;
struct cls_fl_head {int /*<<< orphan*/  masks_lock; int /*<<< orphan*/  masks; int /*<<< orphan*/  ht; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fl_flow_mask* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TCA_FLOWER_MASK_FLAGS_RANGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC3 (struct fl_flow_mask*) ; 
 int /*<<< orphan*/  FUNC4 (struct fl_flow_mask*,struct fl_flow_mask*) ; 
 int /*<<< orphan*/  FUNC5 (struct fl_flow_mask*) ; 
 struct fl_flow_mask* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mask_ht_params ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fl_flow_mask *FUNC13(struct cls_fl_head *head,
					       struct fl_flow_mask *mask)
{
	struct fl_flow_mask *newmask;
	int err;

	newmask = FUNC6(sizeof(*newmask), GFP_KERNEL);
	if (!newmask)
		return FUNC0(-ENOMEM);

	FUNC4(newmask, mask);

	if ((newmask->key.tp_min.dst && newmask->key.tp_max.dst) ||
	    (newmask->key.tp_min.src && newmask->key.tp_max.src))
		newmask->flags |= TCA_FLOWER_MASK_FLAGS_RANGE;

	err = FUNC3(newmask);
	if (err)
		goto errout_free;

	FUNC2(&newmask->dissector, &newmask->key);

	FUNC1(&newmask->filters);

	FUNC8(&newmask->refcnt, 1);
	err = FUNC10(&head->ht, &mask->ht_node,
				      &newmask->ht_node, mask_ht_params);
	if (err)
		goto errout_destroy;

	FUNC11(&head->masks_lock);
	FUNC7(&newmask->list, &head->masks);
	FUNC12(&head->masks_lock);

	return newmask;

errout_destroy:
	FUNC9(&newmask->ht);
errout_free:
	FUNC5(newmask);

	return FUNC0(err);
}