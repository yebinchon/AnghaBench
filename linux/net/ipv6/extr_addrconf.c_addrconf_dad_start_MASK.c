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
struct inet6_ifaddr {scalar_t__ state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ INET6_IFADDR_STATE_DEAD ; 
 scalar_t__ INET6_IFADDR_STATE_PREDAD ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct inet6_ifaddr *ifp)
{
	bool begin_dad = false;

	FUNC1(&ifp->lock);
	if (ifp->state != INET6_IFADDR_STATE_DEAD) {
		ifp->state = INET6_IFADDR_STATE_PREDAD;
		begin_dad = true;
	}
	FUNC2(&ifp->lock);

	if (begin_dad)
		FUNC0(ifp, 0);
}