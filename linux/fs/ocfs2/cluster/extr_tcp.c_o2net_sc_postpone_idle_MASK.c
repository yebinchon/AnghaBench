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
struct o2net_sock_container {int /*<<< orphan*/  sc_idle_timeout; TYPE_1__* sc_node; } ;
struct o2net_node {int /*<<< orphan*/  nn_timeout; int /*<<< orphan*/  nn_still_up; } ;
struct TYPE_2__ {int /*<<< orphan*/  nd_num; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct o2net_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct o2net_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct o2net_sock_container*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct o2net_sock_container *sc)
{
	struct o2net_node *nn = FUNC3(sc->sc_node->nd_num);

	/* clear fence decision since the connection recover from timeout*/
	if (FUNC0(&nn->nn_timeout)) {
		FUNC6(FUNC4(nn));
		FUNC2(&nn->nn_still_up);
		FUNC1(&nn->nn_timeout, 0);
	}

	/* Only push out an existing timer */
	if (FUNC7(&sc->sc_idle_timeout))
		FUNC5(sc);
}