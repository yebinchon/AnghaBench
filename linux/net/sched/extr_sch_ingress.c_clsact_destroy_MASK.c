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
struct clsact_sched_data {int /*<<< orphan*/  ingress_block_info; int /*<<< orphan*/  ingress_block; int /*<<< orphan*/  egress_block_info; int /*<<< orphan*/  egress_block; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct clsact_sched_data* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct Qdisc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct Qdisc *sch)
{
	struct clsact_sched_data *q = FUNC2(sch);

	FUNC3(q->egress_block, sch, &q->egress_block_info);
	FUNC3(q->ingress_block, sch, &q->ingress_block_info);

	FUNC1();
	FUNC0();
}