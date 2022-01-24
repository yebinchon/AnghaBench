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
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  expedited_sequence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ rcu_state ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC4(void)
{
	unsigned long s;

	FUNC2(); /* Caller's modifications seen first by other CPUs. */
	s = FUNC1(&rcu_state.expedited_sequence);
	FUNC3(rcu_state.name, s, FUNC0("snap"));
	return s;
}