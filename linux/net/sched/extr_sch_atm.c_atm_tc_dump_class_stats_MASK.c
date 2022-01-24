#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gnet_dump {int dummy; } ;
struct atm_flow_data {TYPE_2__* q; int /*<<< orphan*/  qstats; int /*<<< orphan*/  bstats; } ;
struct Qdisc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_4__ {TYPE_1__ q; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct gnet_dump*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct gnet_dump*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static int
FUNC3(struct Qdisc *sch, unsigned long arg,
			struct gnet_dump *d)
{
	struct atm_flow_data *flow = (struct atm_flow_data *)arg;

	if (FUNC0(FUNC2(sch),
				  d, NULL, &flow->bstats) < 0 ||
	    FUNC1(d, NULL, &flow->qstats, flow->q->q.qlen) < 0)
		return -1;

	return 0;
}