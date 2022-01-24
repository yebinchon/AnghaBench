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
struct fl_flow_mask {int /*<<< orphan*/  rwork; int /*<<< orphan*/  list; int /*<<< orphan*/  ht_node; int /*<<< orphan*/  refcnt; } ;
struct cls_fl_head {int /*<<< orphan*/  masks_lock; int /*<<< orphan*/  ht; } ;

/* Variables and functions */
 int /*<<< orphan*/  fl_mask_free_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mask_ht_params ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct cls_fl_head *head, struct fl_flow_mask *mask)
{
	if (!FUNC1(&mask->refcnt))
		return false;

	FUNC2(&head->ht, &mask->ht_node, mask_ht_params);

	FUNC3(&head->masks_lock);
	FUNC0(&mask->list);
	FUNC4(&head->masks_lock);

	FUNC5(&mask->rwork, fl_mask_free_work);

	return true;
}