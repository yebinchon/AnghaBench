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
struct net {int dummy; } ;
struct TYPE_2__ {int block_opens; int /*<<< orphan*/  list; } ;
struct lockd_net {int /*<<< orphan*/  nsm_handles; TYPE_1__ lockd_manager; int /*<<< orphan*/  grace_period_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  grace_ender ; 
 int /*<<< orphan*/  lockd_net_id ; 
 struct lockd_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net *net)
{
	struct lockd_net *ln = FUNC2(net, lockd_net_id);

	FUNC0(&ln->grace_period_end, grace_ender);
	FUNC1(&ln->lockd_manager.list);
	ln->lockd_manager.block_opens = false;
	FUNC1(&ln->nsm_handles);
	return 0;
}