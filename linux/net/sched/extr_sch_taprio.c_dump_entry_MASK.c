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
struct sk_buff {int dummy; } ;
struct sched_entry {int /*<<< orphan*/  interval; int /*<<< orphan*/  gate_mask; int /*<<< orphan*/  command; int /*<<< orphan*/  index; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  TCA_TAPRIO_SCHED_ENTRY ; 
 int /*<<< orphan*/  TCA_TAPRIO_SCHED_ENTRY_CMD ; 
 int /*<<< orphan*/  TCA_TAPRIO_SCHED_ENTRY_GATE_MASK ; 
 int /*<<< orphan*/  TCA_TAPRIO_SCHED_ENTRY_INDEX ; 
 int /*<<< orphan*/  TCA_TAPRIO_SCHED_ENTRY_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *msg,
		      const struct sched_entry *entry)
{
	struct nlattr *item;

	item = FUNC2(msg, TCA_TAPRIO_SCHED_ENTRY);
	if (!item)
		return -ENOSPC;

	if (FUNC3(msg, TCA_TAPRIO_SCHED_ENTRY_INDEX, entry->index))
		goto nla_put_failure;

	if (FUNC4(msg, TCA_TAPRIO_SCHED_ENTRY_CMD, entry->command))
		goto nla_put_failure;

	if (FUNC3(msg, TCA_TAPRIO_SCHED_ENTRY_GATE_MASK,
			entry->gate_mask))
		goto nla_put_failure;

	if (FUNC3(msg, TCA_TAPRIO_SCHED_ENTRY_INTERVAL,
			entry->interval))
		goto nla_put_failure;

	return FUNC1(msg, item);

nla_put_failure:
	FUNC0(msg, item);
	return -1;
}