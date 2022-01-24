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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  sid; } ;
struct sel_netif {TYPE_1__ nsec; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sel_netif* FUNC3 (struct net*,int) ; 
 int FUNC4 (struct net*,int,int /*<<< orphan*/ *) ; 

int FUNC5(struct net *ns, int ifindex, u32 *sid)
{
	struct sel_netif *netif;

	FUNC1();
	netif = FUNC3(ns, ifindex);
	if (FUNC0(netif != NULL)) {
		*sid = netif->nsec.sid;
		FUNC2();
		return 0;
	}
	FUNC2();

	return FUNC4(ns, ifindex, sid);
}