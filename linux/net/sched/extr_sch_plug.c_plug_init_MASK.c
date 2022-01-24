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
struct tc_plug_qopt {int limit; } ;
struct plug_sched_data {int unplug_indefinite; int limit; int throttled; scalar_t__ pkts_to_release; scalar_t__ pkts_last_epoch; scalar_t__ pkts_current_epoch; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_3__ {int tx_queue_len; } ;

/* Variables and functions */
 int EINVAL ; 
 struct tc_plug_qopt* FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr*) ; 
 int FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (struct Qdisc*) ; 
 struct plug_sched_data* FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch, struct nlattr *opt,
		     struct netlink_ext_ack *extack)
{
	struct plug_sched_data *q = FUNC4(sch);

	q->pkts_current_epoch = 0;
	q->pkts_last_epoch = 0;
	q->pkts_to_release = 0;
	q->unplug_indefinite = false;

	if (opt == NULL) {
		q->limit = FUNC3(sch)->tx_queue_len
		           * FUNC2(FUNC3(sch));
	} else {
		struct tc_plug_qopt *ctl = FUNC0(opt);

		if (FUNC1(opt) < sizeof(*ctl))
			return -EINVAL;

		q->limit = ctl->limit;
	}

	q->throttled = true;
	return 0;
}