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
struct fq_codel_sched_data {int /*<<< orphan*/  flows; int /*<<< orphan*/  backlogs; int /*<<< orphan*/  block; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct fq_codel_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct Qdisc *sch)
{
	struct fq_codel_sched_data *q = FUNC1(sch);

	FUNC2(q->block);
	FUNC0(q->backlogs);
	FUNC0(q->flows);
}