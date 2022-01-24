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
struct sw_flow_actions {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ovs_nla_free_flow_actions ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct sw_flow_actions *sf_acts)
{
	FUNC0(&sf_acts->rcu, __ovs_nla_free_flow_actions);
}