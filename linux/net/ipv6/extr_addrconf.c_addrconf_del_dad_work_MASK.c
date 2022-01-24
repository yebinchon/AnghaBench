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
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct inet6_ifaddr *ifp)
{
	if (FUNC1(&ifp->dad_work))
		FUNC0(ifp);
}