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
struct net_dm_hw_metadata {struct net_dm_hw_metadata const* trap_group_name; struct net_dm_hw_metadata const* trap_name; scalar_t__ input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_dm_hw_metadata const*) ; 

__attribute__((used)) static void
FUNC2(const struct net_dm_hw_metadata *hw_metadata)
{
	if (hw_metadata->input_dev)
		FUNC0(hw_metadata->input_dev);
	FUNC1(hw_metadata->trap_name);
	FUNC1(hw_metadata->trap_group_name);
	FUNC1(hw_metadata);
}