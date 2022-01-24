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
struct rcu_data {int /*<<< orphan*/  cblist; } ;

/* Variables and functions */
 struct rcu_data* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rcu_data ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC3(int cpu)
{
	struct rcu_data *rdp = FUNC0(&rcu_data, cpu);

	if (FUNC1(&rdp->cblist))
		return FUNC2(&rdp->cblist);
	return 0;
}