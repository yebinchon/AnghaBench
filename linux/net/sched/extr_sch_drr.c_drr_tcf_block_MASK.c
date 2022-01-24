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
struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct drr_sched {struct tcf_block* block; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 struct drr_sched* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static struct tcf_block *FUNC2(struct Qdisc *sch, unsigned long cl,
				       struct netlink_ext_ack *extack)
{
	struct drr_sched *q = FUNC1(sch);

	if (cl) {
		FUNC0(extack, "DRR classid must be zero");
		return NULL;
	}

	return q->block;
}