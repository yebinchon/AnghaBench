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
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct cls_fl_head {int /*<<< orphan*/  ht; int /*<<< orphan*/  handle_idr; int /*<<< orphan*/  hw_filters; int /*<<< orphan*/  masks; int /*<<< orphan*/  masks_lock; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cls_fl_head* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mask_ht_params ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cls_fl_head*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct tcf_proto *tp)
{
	struct cls_fl_head *head;

	head = FUNC3(sizeof(*head), GFP_KERNEL);
	if (!head)
		return -ENOBUFS;

	FUNC6(&head->masks_lock);
	FUNC1(&head->masks);
	FUNC0(&head->hw_filters);
	FUNC4(tp->root, head);
	FUNC2(&head->handle_idr);

	return FUNC5(&head->ht, &mask_ht_params);
}