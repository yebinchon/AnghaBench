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
struct sunrpc_net {int /*<<< orphan*/  pipefs_sb_lock; } ;
struct rpc_pipe_dir_object {int /*<<< orphan*/  pdo_head; } ;
struct rpc_pipe_dir_head {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sunrpc_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,struct rpc_pipe_dir_head*,struct rpc_pipe_dir_object*) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

void
FUNC5(struct net *net,
		struct rpc_pipe_dir_head *pdh,
		struct rpc_pipe_dir_object *pdo)
{
	if (!FUNC0(&pdo->pdo_head)) {
		struct sunrpc_net *sn = FUNC3(net, sunrpc_net_id);

		FUNC1(&sn->pipefs_sb_lock);
		FUNC4(net, pdh, pdo);
		FUNC2(&sn->pipefs_sb_lock);
	}
}