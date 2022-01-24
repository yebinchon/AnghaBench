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
struct sunrpc_net {int pipe_version; int /*<<< orphan*/  pipefs_sb_lock; int /*<<< orphan*/  gssd_dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gssd_dummy_pipe_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sunrpc_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

int FUNC5(struct net *net)
{
	struct sunrpc_net *sn = FUNC3(net, sunrpc_net_id);

	sn->gssd_dummy = FUNC4(&gssd_dummy_pipe_ops, 0);
	if (FUNC0(sn->gssd_dummy))
		return FUNC1(sn->gssd_dummy);

	FUNC2(&sn->pipefs_sb_lock);
	sn->pipe_version = -1;
	return 0;
}