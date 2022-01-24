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
struct tcf_proto {int /*<<< orphan*/  lock; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_fl_head {int /*<<< orphan*/  handle_idr; } ;
struct cls_fl_filter {int deleted; int /*<<< orphan*/  res; int /*<<< orphan*/  flags; TYPE_1__* mask; int /*<<< orphan*/  list; int /*<<< orphan*/  handle; int /*<<< orphan*/  ht_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  filter_ht_params; int /*<<< orphan*/  ht; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct cls_fl_filter*) ; 
 struct cls_fl_head* FUNC1 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*,struct cls_fl_filter*,int,struct netlink_ext_ack*) ; 
 int FUNC3 (struct cls_fl_head*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tcf_proto*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct tcf_proto *tp, struct cls_fl_filter *f,
		       bool *last, bool rtnl_held,
		       struct netlink_ext_ack *extack)
{
	struct cls_fl_head *head = FUNC1(tp);

	*last = false;

	FUNC7(&tp->lock);
	if (f->deleted) {
		FUNC8(&tp->lock);
		return -ENOENT;
	}

	f->deleted = true;
	FUNC6(&f->mask->ht, &f->ht_node,
			       f->mask->filter_ht_params);
	FUNC4(&head->handle_idr, f->handle);
	FUNC5(&f->list);
	FUNC8(&tp->lock);

	*last = FUNC3(head, f->mask);
	if (!FUNC9(f->flags))
		FUNC2(tp, f, rtnl_held, extack);
	FUNC10(tp, &f->res);
	FUNC0(f);

	return 0;
}