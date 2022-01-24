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
struct inet6_ifaddr {int prefix_len; int /*<<< orphan*/  idev; int /*<<< orphan*/  addr; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct in6_addr*) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct inet6_ifaddr *ifp)
{
	struct in6_addr addr;

	if (ifp->prefix_len >= 127) /* RFC 6164 */
		return;
	FUNC2(&addr, &ifp->addr, ifp->prefix_len);
	if (FUNC1(&addr))
		return;
	FUNC0(ifp->idev, &addr);
}