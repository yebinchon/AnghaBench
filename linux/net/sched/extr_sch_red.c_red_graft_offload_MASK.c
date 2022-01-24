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
struct tc_red_qopt_offload {int /*<<< orphan*/  command; int /*<<< orphan*/  child_handle; int /*<<< orphan*/  parent; int /*<<< orphan*/  handle; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int /*<<< orphan*/  handle; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  TC_RED_GRAFT ; 
 int /*<<< orphan*/  TC_SETUP_QDISC_RED ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct Qdisc*,struct Qdisc*,struct Qdisc*,int /*<<< orphan*/ ,struct tc_red_qopt_offload*,struct netlink_ext_ack*) ; 

__attribute__((used)) static void FUNC2(struct Qdisc *sch,
			      struct Qdisc *new, struct Qdisc *old,
			      struct netlink_ext_ack *extack)
{
	struct tc_red_qopt_offload graft_offload = {
		.handle		= sch->handle,
		.parent		= sch->parent,
		.child_handle	= new->handle,
		.command	= TC_RED_GRAFT,
	};

	FUNC1(FUNC0(sch), sch, new, old,
				   TC_SETUP_QDISC_RED, &graft_offload, extack);
}