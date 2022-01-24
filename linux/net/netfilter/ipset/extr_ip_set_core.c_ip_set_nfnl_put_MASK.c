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
struct net {int dummy; } ;
struct ip_set_net {int /*<<< orphan*/  is_deleted; } ;
struct ip_set {int dummy; } ;
typedef  int /*<<< orphan*/  ip_set_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  NFNL_SUBSYS_IPSET ; 
 int /*<<< orphan*/  FUNC0 (struct ip_set*) ; 
 struct ip_set* FUNC1 (struct ip_set_net*,int /*<<< orphan*/ ) ; 
 struct ip_set_net* FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct net *net, ip_set_id_t index)
{
	struct ip_set *set;
	struct ip_set_net *inst = FUNC2(net);

	FUNC3(NFNL_SUBSYS_IPSET);
	if (!inst->is_deleted) { /* already deleted from ip_set_net_exit() */
		set = FUNC1(inst, index);
		if (set)
			FUNC0(set);
	}
	FUNC4(NFNL_SUBSYS_IPSET);
}