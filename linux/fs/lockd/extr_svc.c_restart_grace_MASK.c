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
struct lockd_net {int /*<<< orphan*/  lockd_manager; int /*<<< orphan*/  grace_period_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct net init_net ; 
 int /*<<< orphan*/  lockd_net_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct lockd_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ nlmsvc_ops ; 
 int /*<<< orphan*/  FUNC4 (struct net*) ; 

__attribute__((used)) static void FUNC5(void)
{
	if (nlmsvc_ops) {
		struct net *net = &init_net;
		struct lockd_net *ln = FUNC2(net, lockd_net_id);

		FUNC0(&ln->grace_period_end);
		FUNC1(&ln->lockd_manager);
		FUNC3();
		FUNC4(net);
	}
}