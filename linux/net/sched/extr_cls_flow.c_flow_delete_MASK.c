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
struct netlink_ext_ack {int dummy; } ;
struct flow_head {int /*<<< orphan*/  filters; } ;
struct flow_filter {int /*<<< orphan*/  rwork; int /*<<< orphan*/  exts; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  flow_destroy_filter_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct flow_head* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tcf_proto *tp, void *arg, bool *last,
		       bool rtnl_held, struct netlink_ext_ack *extack)
{
	struct flow_head *head = FUNC2(tp->root);
	struct flow_filter *f = arg;

	FUNC0(&f->list);
	FUNC3(&f->exts);
	FUNC4(&f->rwork, flow_destroy_filter_work);
	*last = FUNC1(&head->filters);
	return 0;
}