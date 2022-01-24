#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct clocksource* clock; } ;
struct timekeeper {TYPE_1__ tkr_mono; } ;
struct clocksource {scalar_t__ (* enable ) (struct clocksource*) ;int /*<<< orphan*/  owner; int /*<<< orphan*/  (* disable ) (struct clocksource*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int TK_CLEAR_NTP ; 
 int TK_CLOCK_WAS_SET ; 
 int TK_MIRROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC4 (struct clocksource*) ; 
 int /*<<< orphan*/  timekeeper_lock ; 
 int /*<<< orphan*/  FUNC5 (struct timekeeper*) ; 
 int /*<<< orphan*/  FUNC6 (struct timekeeper*,int) ; 
 TYPE_2__ tk_core ; 
 int /*<<< orphan*/  FUNC7 (struct timekeeper*,struct clocksource*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(void *data)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	struct clocksource *new, *old;
	unsigned long flags;

	new = (struct clocksource *) data;

	FUNC1(&timekeeper_lock, flags);
	FUNC9(&tk_core.seq);

	FUNC5(tk);
	/*
	 * If the cs is in module, get a module reference. Succeeds
	 * for built-in code (owner == NULL) as well.
	 */
	if (FUNC8(new->owner)) {
		if (!new->enable || new->enable(new) == 0) {
			old = tk->tkr_mono.clock;
			FUNC7(tk, new);
			if (old->disable)
				old->disable(old);
			FUNC0(old->owner);
		} else {
			FUNC0(new->owner);
		}
	}
	FUNC6(tk, TK_CLEAR_NTP | TK_MIRROR | TK_CLOCK_WAS_SET);

	FUNC10(&tk_core.seq);
	FUNC2(&timekeeper_lock, flags);

	return 0;
}