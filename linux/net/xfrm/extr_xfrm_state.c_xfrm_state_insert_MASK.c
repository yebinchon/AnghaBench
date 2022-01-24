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
struct xfrm_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xfrm_state_lock; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct net* FUNC4 (struct xfrm_state*) ; 

void FUNC5(struct xfrm_state *x)
{
	struct net *net = FUNC4(x);

	FUNC2(&net->xfrm.xfrm_state_lock);
	FUNC0(x);
	FUNC1(x);
	FUNC3(&net->xfrm.xfrm_state_lock);
}