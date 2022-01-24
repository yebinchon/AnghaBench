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
struct per_cpu_dm_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  hw_entries; int /*<<< orphan*/  send_timer; } ;
struct net_dm_hw_entries {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  dm_hit_limit ; 
 int /*<<< orphan*/  entries ; 
 scalar_t__ jiffies ; 
 struct net_dm_hw_entries* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct net_dm_hw_entries*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_dm_hw_entries*) ; 

__attribute__((used)) static struct net_dm_hw_entries *
FUNC6(struct per_cpu_dm_data *hw_data)
{
	struct net_dm_hw_entries *hw_entries;
	unsigned long flags;

	hw_entries = FUNC0(FUNC4(hw_entries, entries, dm_hit_limit),
			     GFP_KERNEL);
	if (!hw_entries) {
		/* If the memory allocation failed, we try to perform another
		 * allocation in 1/10 second. Otherwise, the probe function
		 * will constantly bail out.
		 */
		FUNC1(&hw_data->send_timer, jiffies + HZ / 10);
	}

	FUNC2(&hw_data->lock, flags);
	FUNC5(hw_data->hw_entries, hw_entries);
	FUNC3(&hw_data->lock, flags);

	return hw_entries;
}