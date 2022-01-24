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
struct inet6_ifaddr {int /*<<< orphan*/  dad_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  addrconf_wq ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_ifaddr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct inet6_ifaddr *ifp,
				   unsigned long delay)
{
	FUNC0(ifp);
	if (FUNC2(addrconf_wq, &ifp->dad_work, delay))
		FUNC1(ifp);
}