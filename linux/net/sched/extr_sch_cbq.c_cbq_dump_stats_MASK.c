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
struct TYPE_4__ {int /*<<< orphan*/  avgidle; } ;
struct TYPE_3__ {TYPE_2__ xstats; int /*<<< orphan*/  avgidle; } ;
struct cbq_sched_data {TYPE_1__ link; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct gnet_dump*,TYPE_2__*,int) ; 
 struct cbq_sched_data* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static int
FUNC2(struct Qdisc *sch, struct gnet_dump *d)
{
	struct cbq_sched_data *q = FUNC1(sch);

	q->link.xstats.avgidle = q->link.avgidle;
	return FUNC0(d, &q->link.xstats, sizeof(q->link.xstats));
}