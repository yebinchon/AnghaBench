#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tc_fifo_qopt {int limit; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int limit; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;
struct TYPE_3__ {int tx_queue_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TCQ_F_CAN_BYPASS ; 
 int /*<<< orphan*/  bfifo_qdisc_ops ; 
 struct tc_fifo_qopt* FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr*) ; 
 int FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC4(struct Qdisc *sch, struct nlattr *opt,
		     struct netlink_ext_ack *extack)
{
	bool bypass;
	bool is_bfifo = sch->ops == &bfifo_qdisc_ops;

	if (opt == NULL) {
		u32 limit = FUNC3(sch)->tx_queue_len;

		if (is_bfifo)
			limit *= FUNC2(FUNC3(sch));

		sch->limit = limit;
	} else {
		struct tc_fifo_qopt *ctl = FUNC0(opt);

		if (FUNC1(opt) < sizeof(*ctl))
			return -EINVAL;

		sch->limit = ctl->limit;
	}

	if (is_bfifo)
		bypass = sch->limit >= FUNC2(FUNC3(sch));
	else
		bypass = sch->limit >= 1;

	if (bypass)
		sch->flags |= TCQ_F_CAN_BYPASS;
	else
		sch->flags &= ~TCQ_F_CAN_BYPASS;
	return 0;
}