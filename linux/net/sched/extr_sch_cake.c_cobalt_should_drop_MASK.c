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
typedef  int u64 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct cobalt_vars {int count; int ecn_marked; int dropping; scalar_t__ p_drop; void* drop_next; int /*<<< orphan*/  rec_inv_sqrt; } ;
struct cobalt_params {int target; int mtu_time; int /*<<< orphan*/  interval; } ;
typedef  void* ktime_t ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct cobalt_vars*) ; 
 void* FUNC4 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*,void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static bool FUNC8(struct cobalt_vars *vars,
			       struct cobalt_params *p,
			       ktime_t now,
			       struct sk_buff *skb,
			       u32 bulk_flows)
{
	bool next_due, over_target, drop = false;
	ktime_t schedule;
	u64 sojourn;

/* The 'schedule' variable records, in its sign, whether 'now' is before or
 * after 'drop_next'.  This allows 'drop_next' to be updated before the next
 * scheduling decision is actually branched, without destroying that
 * information.  Similarly, the first 'schedule' value calculated is preserved
 * in the boolean 'next_due'.
 *
 * As for 'drop_next', we take advantage of the fact that 'interval' is both
 * the delay between first exceeding 'target' and the first signalling event,
 * *and* the scaling factor for the signalling frequency.  It's therefore very
 * natural to use a single mechanism for both purposes, and eliminates a
 * significant amount of reference Codel's spaghetti code.  To help with this,
 * both the '0' and '1' entries in the invsqrt cache are 0xFFFFFFFF, as close
 * as possible to 1.0 in fixed-point.
 */

	sojourn = FUNC6(FUNC5(now, FUNC2(skb)));
	schedule = FUNC5(now, vars->drop_next);
	over_target = sojourn > p->target &&
		      sojourn > p->mtu_time * bulk_flows * 2 &&
		      sojourn > p->mtu_time * 4;
	next_due = vars->count && FUNC6(schedule) >= 0;

	vars->ecn_marked = false;

	if (over_target) {
		if (!vars->dropping) {
			vars->dropping = true;
			vars->drop_next = FUNC1(now,
							 p->interval,
							 vars->rec_inv_sqrt);
		}
		if (!vars->count)
			vars->count = 1;
	} else if (vars->dropping) {
		vars->dropping = false;
	}

	if (next_due && vars->dropping) {
		/* Use ECN mark if possible, otherwise drop */
		drop = !(vars->ecn_marked = FUNC0(skb));

		vars->count++;
		if (!vars->count)
			vars->count--;
		FUNC3(vars);
		vars->drop_next = FUNC1(vars->drop_next,
						 p->interval,
						 vars->rec_inv_sqrt);
		schedule = FUNC5(now, vars->drop_next);
	} else {
		while (next_due) {
			vars->count--;
			FUNC3(vars);
			vars->drop_next = FUNC1(vars->drop_next,
							 p->interval,
							 vars->rec_inv_sqrt);
			schedule = FUNC5(now, vars->drop_next);
			next_due = vars->count && FUNC6(schedule) >= 0;
		}
	}

	/* Simple BLUE implementation.  Lack of ECN is deliberate. */
	if (vars->p_drop)
		drop |= (FUNC7() < vars->p_drop);

	/* Overload the drop_next field as an activity timeout */
	if (!vars->count)
		vars->drop_next = FUNC4(now, p->interval);
	else if (FUNC6(schedule) > 0 && !drop)
		vars->drop_next = now;

	return drop;
}