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
struct tcf_proto {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_fl_head {int /*<<< orphan*/  masks; } ;
struct cls_fl_filter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tcf_proto*,struct cls_fl_filter*,int*,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct cls_fl_filter*) ; 
 struct cls_fl_head* FUNC2 (struct tcf_proto*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tcf_proto *tp, void *arg, bool *last,
		     bool rtnl_held, struct netlink_ext_ack *extack)
{
	struct cls_fl_head *head = FUNC2(tp);
	struct cls_fl_filter *f = arg;
	bool last_on_mask;
	int err = 0;

	err = FUNC0(tp, f, &last_on_mask, rtnl_held, extack);
	*last = FUNC3(&head->masks);
	FUNC1(f);

	return err;
}