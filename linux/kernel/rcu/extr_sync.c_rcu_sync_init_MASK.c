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
struct rcu_sync {int /*<<< orphan*/  gp_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rcu_sync*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct rcu_sync *rsp)
{
	FUNC1(rsp, 0, sizeof(*rsp));
	FUNC0(&rsp->gp_wait);
}