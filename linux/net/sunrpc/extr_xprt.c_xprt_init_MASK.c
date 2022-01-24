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
struct rpc_xprt {int /*<<< orphan*/  xprt_net; int /*<<< orphan*/  backlog; int /*<<< orphan*/  sending; int /*<<< orphan*/  pending; int /*<<< orphan*/  binding; scalar_t__ bind_index; int /*<<< orphan*/  cwnd; int /*<<< orphan*/  last_used; int /*<<< orphan*/  xprt_switch; int /*<<< orphan*/  bc_pa_list; int /*<<< orphan*/  bc_pa_lock; int /*<<< orphan*/  xmit_queue; int /*<<< orphan*/  recv_queue; int /*<<< orphan*/  free; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  reserve_lock; int /*<<< orphan*/  transport_lock; int /*<<< orphan*/  kref; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  RPC_INITCWND ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*) ; 

__attribute__((used)) static void FUNC7(struct rpc_xprt *xprt, struct net *net)
{
	FUNC2(&xprt->kref);

	FUNC5(&xprt->transport_lock);
	FUNC5(&xprt->reserve_lock);
	FUNC5(&xprt->queue_lock);

	FUNC0(&xprt->free);
	xprt->recv_queue = RB_ROOT;
	FUNC0(&xprt->xmit_queue);
#if defined(CONFIG_SUNRPC_BACKCHANNEL)
	spin_lock_init(&xprt->bc_pa_lock);
	INIT_LIST_HEAD(&xprt->bc_pa_list);
#endif /* CONFIG_SUNRPC_BACKCHANNEL */
	FUNC0(&xprt->xprt_switch);

	xprt->last_used = jiffies;
	xprt->cwnd = RPC_INITCWND;
	xprt->bind_index = 0;

	FUNC4(&xprt->binding, "xprt_binding");
	FUNC4(&xprt->pending, "xprt_pending");
	FUNC4(&xprt->sending, "xprt_sending");
	FUNC3(&xprt->backlog, "xprt_backlog");

	FUNC6(xprt);

	xprt->xprt_net = FUNC1(net);
}