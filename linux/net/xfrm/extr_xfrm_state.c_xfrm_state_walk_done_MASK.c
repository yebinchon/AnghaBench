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
struct xfrm_state_walk {int /*<<< orphan*/  all; int /*<<< orphan*/  filter; } ;
struct TYPE_2__ {int /*<<< orphan*/  xfrm_state_lock; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct xfrm_state_walk *walk, struct net *net)
{
	FUNC0(walk->filter);

	if (FUNC2(&walk->all))
		return;

	FUNC3(&net->xfrm.xfrm_state_lock);
	FUNC1(&walk->all);
	FUNC4(&net->xfrm.xfrm_state_lock);
}