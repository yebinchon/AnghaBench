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
struct neighbour {int nud_state; int /*<<< orphan*/  lock; } ;
struct fib6_nh {int /*<<< orphan*/  fib_nh_gw6; int /*<<< orphan*/  fib_nh_dev; } ;
typedef  enum rt6_nud_state { ____Placeholder_rt6_nud_state } rt6_nud_state ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IPV6_ROUTER_PREF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NUD_FAILED ; 
 int NUD_VALID ; 
 int RT6_NUD_FAIL_DO_RR ; 
 int RT6_NUD_FAIL_HARD ; 
 int RT6_NUD_FAIL_PROBE ; 
 int RT6_NUD_SUCCEED ; 
 struct neighbour* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum rt6_nud_state FUNC6(const struct fib6_nh *fib6_nh)
{
	enum rt6_nud_state ret = RT6_NUD_FAIL_HARD;
	struct neighbour *neigh;

	FUNC2();
	neigh = FUNC1(fib6_nh->fib_nh_dev,
					  &fib6_nh->fib_nh_gw6);
	if (neigh) {
		FUNC4(&neigh->lock);
		if (neigh->nud_state & NUD_VALID)
			ret = RT6_NUD_SUCCEED;
#ifdef CONFIG_IPV6_ROUTER_PREF
		else if (!(neigh->nud_state & NUD_FAILED))
			ret = RT6_NUD_SUCCEED;
		else
			ret = RT6_NUD_FAIL_PROBE;
#endif
		FUNC5(&neigh->lock);
	} else {
		ret = FUNC0(CONFIG_IPV6_ROUTER_PREF) ?
		      RT6_NUD_SUCCEED : RT6_NUD_FAIL_DO_RR;
	}
	FUNC3();

	return ret;
}