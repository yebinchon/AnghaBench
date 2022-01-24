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
struct torture_random_state {int dummy; } ;
struct TYPE_2__ {int nrealwriters_stress; } ;

/* Variables and functions */
 TYPE_1__ cxt ; 
 int /*<<< orphan*/  FUNC0 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct torture_random_state*) ; 

__attribute__((used)) static void FUNC3(struct torture_random_state *trsp)
{
	const unsigned long longdelay_ms = 100;

	/* We want a long delay occasionally to force massive contention.  */
	if (!(FUNC2(trsp) %
	      (cxt.nrealwriters_stress * 2000 * longdelay_ms)))
		FUNC0(longdelay_ms);
	if (!(FUNC2(trsp) % (cxt.nrealwriters_stress * 20000)))
		FUNC1();  /* Allow test to be preempted. */
}