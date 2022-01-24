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
struct softnet_data {struct Qdisc** output_queue_tailp; } ;
struct Qdisc {struct Qdisc* next_sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  NET_TX_SOFTIRQ ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  softnet_data ; 
 struct softnet_data* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct Qdisc *q)
{
	struct softnet_data *sd;
	unsigned long flags;

	FUNC1(flags);
	sd = FUNC3(&softnet_data);
	q->next_sched = NULL;
	*sd->output_queue_tailp = q;
	sd->output_queue_tailp = &q->next_sched;
	FUNC2(NET_TX_SOFTIRQ);
	FUNC0(flags);
}