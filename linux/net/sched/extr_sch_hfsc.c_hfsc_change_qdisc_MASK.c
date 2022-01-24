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
struct tc_hfsc_qopt {int /*<<< orphan*/  defcls; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct hfsc_sched {int /*<<< orphan*/  defcls; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct tc_hfsc_qopt* FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr*) ; 
 struct hfsc_sched* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static int
FUNC5(struct Qdisc *sch, struct nlattr *opt,
		  struct netlink_ext_ack *extack)
{
	struct hfsc_sched *q = FUNC2(sch);
	struct tc_hfsc_qopt *qopt;

	if (opt == NULL || FUNC1(opt) < sizeof(*qopt))
		return -EINVAL;
	qopt = FUNC0(opt);

	FUNC3(sch);
	q->defcls = qopt->defcls;
	FUNC4(sch);

	return 0;
}