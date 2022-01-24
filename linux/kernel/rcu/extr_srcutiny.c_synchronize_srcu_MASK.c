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
struct srcu_struct {int dummy; } ;
struct rcu_synchronize {int /*<<< orphan*/  head; int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct srcu_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wakeme_after_rcu ; 

void FUNC5(struct srcu_struct *ssp)
{
	struct rcu_synchronize rs;

	FUNC3(&rs.head);
	FUNC2(&rs.completion);
	FUNC0(ssp, &rs.head, wakeme_after_rcu);
	FUNC4(&rs.completion);
	FUNC1(&rs.head);
}