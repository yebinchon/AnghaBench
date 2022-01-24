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
struct basic_head {int /*<<< orphan*/  flist; int /*<<< orphan*/  handle_idr; } ;
struct basic_filter {int /*<<< orphan*/  rwork; int /*<<< orphan*/  exts; int /*<<< orphan*/  handle; int /*<<< orphan*/  res; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  basic_delete_filter_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct basic_head* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_proto*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct tcf_proto *tp, void *arg, bool *last,
			bool rtnl_held, struct netlink_ext_ack *extack)
{
	struct basic_head *head = FUNC3(tp->root);
	struct basic_filter *f = arg;

	FUNC1(&f->link);
	FUNC6(tp, &f->res);
	FUNC0(&head->handle_idr, f->handle);
	FUNC4(&f->exts);
	FUNC5(&f->rwork, basic_delete_filter_work);
	*last = FUNC2(&head->flist);
	return 0;
}