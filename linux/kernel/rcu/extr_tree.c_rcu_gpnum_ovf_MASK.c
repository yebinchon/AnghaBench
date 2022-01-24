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
struct rcu_node {scalar_t__ gp_seq; } ;
struct rcu_data {scalar_t__ rcu_iw_gp_seq; int /*<<< orphan*/  gpwrap; int /*<<< orphan*/  gp_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int ULONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rcu_node*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rcu_node *rnp, struct rcu_data *rdp)
{
	FUNC2(rnp);
	if (FUNC0(FUNC3(&rdp->gp_seq) + ULONG_MAX / 4,
			 rnp->gp_seq))
		FUNC1(rdp->gpwrap, true);
	if (FUNC0(rdp->rcu_iw_gp_seq + ULONG_MAX / 4, rnp->gp_seq))
		rdp->rcu_iw_gp_seq = rnp->gp_seq + ULONG_MAX / 4;
}