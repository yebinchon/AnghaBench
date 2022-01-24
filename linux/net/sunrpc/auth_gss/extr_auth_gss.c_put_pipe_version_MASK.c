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
struct sunrpc_net {int pipe_version; int /*<<< orphan*/  pipe_users; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sunrpc_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pipe_version_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

__attribute__((used)) static void FUNC3(struct net *net)
{
	struct sunrpc_net *sn = FUNC1(net, sunrpc_net_id);

	if (FUNC0(&sn->pipe_users, &pipe_version_lock)) {
		sn->pipe_version = -1;
		FUNC2(&pipe_version_lock);
	}
}