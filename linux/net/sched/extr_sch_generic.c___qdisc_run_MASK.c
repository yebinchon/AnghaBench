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
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 int dev_tx_weight ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct Qdisc*,int*) ; 

void FUNC3(struct Qdisc *q)
{
	int quota = dev_tx_weight;
	int packets;

	while (FUNC2(q, &packets)) {
		/*
		 * Ordered by possible occurrence: Postpone processing if
		 * 1. we've exceeded packet quota
		 * 2. another process needs the CPU;
		 */
		quota -= packets;
		if (quota <= 0 || FUNC1()) {
			FUNC0(q);
			break;
		}
	}
}