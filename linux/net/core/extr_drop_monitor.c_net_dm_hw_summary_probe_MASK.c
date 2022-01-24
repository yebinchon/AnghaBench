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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct per_cpu_dm_data {int /*<<< orphan*/  lock; TYPE_1__ send_timer; struct net_dm_hw_entries* hw_entries; } ;
struct net_dm_hw_metadata {int /*<<< orphan*/  trap_name; } ;
struct net_dm_hw_entry {int count; int /*<<< orphan*/  trap_name; } ;
struct net_dm_hw_entries {int num_entries; struct net_dm_hw_entry* entries; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ NET_DM_MAX_HW_TRAP_NAME_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int dm_delay ; 
 int dm_hit_limit ; 
 int /*<<< orphan*/  dm_hw_cpu_data ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct per_cpu_dm_data* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(struct sk_buff *skb,
			const struct net_dm_hw_metadata *hw_metadata)
{
	struct net_dm_hw_entries *hw_entries;
	struct net_dm_hw_entry *hw_entry;
	struct per_cpu_dm_data *hw_data;
	unsigned long flags;
	int i;

	hw_data = FUNC6(&dm_hw_cpu_data);
	FUNC2(&hw_data->lock, flags);
	hw_entries = hw_data->hw_entries;

	if (!hw_entries)
		goto out;

	for (i = 0; i < hw_entries->num_entries; i++) {
		hw_entry = &hw_entries->entries[i];
		if (!FUNC5(hw_entry->trap_name, hw_metadata->trap_name,
			     NET_DM_MAX_HW_TRAP_NAME_LEN - 1)) {
			hw_entry->count++;
			goto out;
		}
	}
	if (FUNC0(hw_entries->num_entries == dm_hit_limit))
		goto out;

	hw_entry = &hw_entries->entries[hw_entries->num_entries];
	FUNC4(hw_entry->trap_name, hw_metadata->trap_name,
		NET_DM_MAX_HW_TRAP_NAME_LEN - 1);
	hw_entry->count = 1;
	hw_entries->num_entries++;

	if (!FUNC7(&hw_data->send_timer)) {
		hw_data->send_timer.expires = jiffies + dm_delay * HZ;
		FUNC1(&hw_data->send_timer);
	}

out:
	FUNC3(&hw_data->lock, flags);
}