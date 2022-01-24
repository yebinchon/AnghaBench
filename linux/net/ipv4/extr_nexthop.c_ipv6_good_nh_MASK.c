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
struct neighbour {int nud_state; } ;
struct fib6_nh {int /*<<< orphan*/  fib_nh_gw6; int /*<<< orphan*/  fib_nh_dev; } ;

/* Variables and functions */
 int NUD_REACHABLE ; 
 int NUD_VALID ; 
 struct neighbour* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static bool FUNC3(const struct fib6_nh *nh)
{
	int state = NUD_REACHABLE;
	struct neighbour *n;

	FUNC1();

	n = FUNC0(nh->fib_nh_dev, &nh->fib_nh_gw6);
	if (n)
		state = n->nud_state;

	FUNC2();

	return !!(state & NUD_VALID);
}