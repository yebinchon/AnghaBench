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
struct inet6_ifaddr {TYPE_1__* idev; } ;
struct TYPE_2__ {scalar_t__ dead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct inet6_ifaddr*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(int event, struct inet6_ifaddr *ifp)
{
	FUNC2();
	if (FUNC1(ifp->idev->dead == 0))
		FUNC0(event, ifp);
	FUNC3();
}