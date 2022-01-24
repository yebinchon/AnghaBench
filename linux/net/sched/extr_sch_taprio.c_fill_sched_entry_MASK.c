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
typedef  scalar_t__ u32 ;
struct sched_entry {scalar_t__ interval; void* gate_mask; int /*<<< orphan*/  command; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_TAPRIO_SCHED_ENTRY_CMD ; 
 size_t TCA_TAPRIO_SCHED_ENTRY_GATE_MASK ; 
 size_t TCA_TAPRIO_SCHED_ENTRY_INTERVAL ; 
 void* FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 

__attribute__((used)) static int FUNC3(struct nlattr **tb, struct sched_entry *entry,
			    struct netlink_ext_ack *extack)
{
	u32 interval = 0;

	if (tb[TCA_TAPRIO_SCHED_ENTRY_CMD])
		entry->command = FUNC2(
			tb[TCA_TAPRIO_SCHED_ENTRY_CMD]);

	if (tb[TCA_TAPRIO_SCHED_ENTRY_GATE_MASK])
		entry->gate_mask = FUNC1(
			tb[TCA_TAPRIO_SCHED_ENTRY_GATE_MASK]);

	if (tb[TCA_TAPRIO_SCHED_ENTRY_INTERVAL])
		interval = FUNC1(
			tb[TCA_TAPRIO_SCHED_ENTRY_INTERVAL]);

	if (interval == 0) {
		FUNC0(extack, "Invalid interval for schedule entry");
		return -EINVAL;
	}

	entry->interval = interval;

	return 0;
}