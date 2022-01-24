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
struct TYPE_2__ {scalar_t__ state; } ;
struct xfrm_state {int /*<<< orphan*/  gclist; TYPE_1__ km; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFRM_STATE_DEAD ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  xfrm_state_gc_list ; 
 int /*<<< orphan*/  xfrm_state_gc_lock ; 
 int /*<<< orphan*/  xfrm_state_gc_work ; 

void FUNC7(struct xfrm_state *x, bool sync)
{
	FUNC0(x->km.state != XFRM_STATE_DEAD);

	if (sync) {
		FUNC6();
		FUNC1(x);
	} else {
		FUNC4(&xfrm_state_gc_lock);
		FUNC2(&x->gclist, &xfrm_state_gc_list);
		FUNC5(&xfrm_state_gc_lock);
		FUNC3(&xfrm_state_gc_work);
	}
}