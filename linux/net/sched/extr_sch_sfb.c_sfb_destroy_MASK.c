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
struct sfb_sched_data {int /*<<< orphan*/  qdisc; int /*<<< orphan*/  block; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 struct sfb_sched_data* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct Qdisc *sch)
{
	struct sfb_sched_data *q = FUNC0(sch);

	FUNC2(q->block);
	FUNC1(q->qdisc);
}