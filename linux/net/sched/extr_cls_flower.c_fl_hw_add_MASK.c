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
struct tcf_proto {int /*<<< orphan*/  lock; } ;
struct flow_cls_offload {scalar_t__ cookie; } ;
struct cls_fl_head {int /*<<< orphan*/  hw_filters; } ;
struct cls_fl_filter {int /*<<< orphan*/  hw_list; } ;

/* Variables and functions */
 struct cls_fl_head* FUNC0 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tcf_proto *tp, void *type_data)
{
	struct flow_cls_offload *cls_flower = type_data;
	struct cls_fl_filter *f =
		(struct cls_fl_filter *) cls_flower->cookie;
	struct cls_fl_head *head = FUNC0(tp);

	FUNC2(&tp->lock);
	FUNC1(&f->hw_list, &head->hw_filters);
	FUNC3(&tp->lock);
}