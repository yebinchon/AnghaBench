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
struct rcu_torture {int /*<<< orphan*/  rtort_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_rcu_torture_free ; 
 int /*<<< orphan*/  rcu_torture_freelist ; 
 int /*<<< orphan*/  rcu_torture_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct rcu_torture *p)
{
	FUNC0(&n_rcu_torture_free);
	FUNC2(&rcu_torture_lock);
	FUNC1(&p->rtort_free, &rcu_torture_freelist);
	FUNC3(&rcu_torture_lock);
}