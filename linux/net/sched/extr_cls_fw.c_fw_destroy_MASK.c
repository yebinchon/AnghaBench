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
struct fw_head {int /*<<< orphan*/ * ht; } ;
struct fw_filter {int /*<<< orphan*/  rwork; int /*<<< orphan*/  exts; int /*<<< orphan*/  res; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int HTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_filter*) ; 
 int /*<<< orphan*/  fw_delete_filter_work ; 
 int /*<<< orphan*/  FUNC2 (struct fw_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tcf_proto*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct tcf_proto *tp, bool rtnl_held,
		       struct netlink_ext_ack *extack)
{
	struct fw_head *head = FUNC3(tp->root);
	struct fw_filter *f;
	int h;

	if (head == NULL)
		return;

	for (h = 0; h < HTSIZE; h++) {
		while ((f = FUNC3(head->ht[h])) != NULL) {
			FUNC0(head->ht[h],
					 FUNC3(f->next));
			FUNC6(tp, &f->res);
			if (FUNC4(&f->exts))
				FUNC5(&f->rwork, fw_delete_filter_work);
			else
				FUNC1(f);
		}
	}
	FUNC2(head, rcu);
}