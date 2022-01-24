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
struct TYPE_2__ {int /*<<< orphan*/  gp_seq; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ rcu_state ; 
 int /*<<< orphan*/  FUNC1 () ; 

unsigned long FUNC2(void)
{
	/*
	 * Any prior manipulation of RCU-protected data must happen
	 * before the load from ->gp_seq.
	 */
	FUNC1();  /* ^^^ */
	return FUNC0(&rcu_state.gp_seq);
}