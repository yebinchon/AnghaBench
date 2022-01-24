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
struct cls_mall_head {int /*<<< orphan*/  rwork; int /*<<< orphan*/  exts; int /*<<< orphan*/  flags; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cls_mall_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_proto*,struct cls_mall_head*,unsigned long,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  mall_destroy_work ; 
 struct cls_mall_head* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_proto*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct tcf_proto *tp, bool rtnl_held,
			 struct netlink_ext_ack *extack)
{
	struct cls_mall_head *head = FUNC2(tp->root);

	if (!head)
		return;

	FUNC6(tp, &head->res);

	if (!FUNC3(head->flags))
		FUNC1(tp, head, (unsigned long) head, extack);

	if (FUNC4(&head->exts))
		FUNC5(&head->rwork, mall_destroy_work);
	else
		FUNC0(head);
}