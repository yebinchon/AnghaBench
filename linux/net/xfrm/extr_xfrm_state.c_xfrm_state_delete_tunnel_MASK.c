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
struct xfrm_state {struct xfrm_state* tunnel; int /*<<< orphan*/  tunnel_users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state*) ; 

void FUNC4(struct xfrm_state *x)
{
	if (x->tunnel) {
		struct xfrm_state *t = x->tunnel;

		if (FUNC1(&t->tunnel_users) == 2)
			FUNC2(t);
		FUNC0(&t->tunnel_users);
		FUNC3(t);
		x->tunnel = NULL;
	}
}