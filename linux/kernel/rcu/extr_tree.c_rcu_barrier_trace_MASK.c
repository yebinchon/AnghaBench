#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  barrier_cpu_count; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ rcu_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC2(const char *s, int cpu, unsigned long done)
{
	FUNC1(rcu_state.name, s, cpu,
			  FUNC0(&rcu_state.barrier_cpu_count), done);
}