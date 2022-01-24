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
struct cobalt_vars {scalar_t__ p_drop; int dropping; int /*<<< orphan*/  rec_inv_sqrt; int /*<<< orphan*/  drop_next; scalar_t__ count; int /*<<< orphan*/  blue_timer; } ;
struct cobalt_params {scalar_t__ target; scalar_t__ p_dec; int /*<<< orphan*/  interval; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cobalt_vars*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct cobalt_vars *vars,
			       struct cobalt_params *p,
			       ktime_t now)
{
	bool down = false;

	if (vars->p_drop &&
	    FUNC3(FUNC2(now, vars->blue_timer)) > p->target) {
		if (vars->p_drop < p->p_dec)
			vars->p_drop = 0;
		else
			vars->p_drop -= p->p_dec;
		vars->blue_timer = now;
		down = !vars->p_drop;
	}
	vars->dropping = false;

	if (vars->count && FUNC3(FUNC2(now, vars->drop_next)) >= 0) {
		vars->count--;
		FUNC1(vars);
		vars->drop_next = FUNC0(vars->drop_next,
						 p->interval,
						 vars->rec_inv_sqrt);
	}

	return down;
}