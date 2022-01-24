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
struct rcu_data {int /*<<< orphan*/  dynticks; } ;

/* Variables and functions */
 int RCU_DYNTICK_CTRL_CTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_data ; 
 struct rcu_data* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct rcu_data *rdp = FUNC2(&rcu_data);

	if (FUNC1(&rdp->dynticks) & RCU_DYNTICK_CTRL_CTR)
		return;
	FUNC0(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
}