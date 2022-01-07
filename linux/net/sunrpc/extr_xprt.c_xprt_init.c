
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int xprt_net; int backlog; int sending; int pending; int binding; scalar_t__ bind_index; int cwnd; int last_used; int xprt_switch; int bc_pa_list; int bc_pa_lock; int xmit_queue; int recv_queue; int free; int queue_lock; int reserve_lock; int transport_lock; int kref; } ;
struct net {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int RPC_INITCWND ;
 int get_net (struct net*) ;
 int jiffies ;
 int kref_init (int *) ;
 int rpc_init_priority_wait_queue (int *,char*) ;
 int rpc_init_wait_queue (int *,char*) ;
 int spin_lock_init (int *) ;
 int xprt_init_xid (struct rpc_xprt*) ;

__attribute__((used)) static void xprt_init(struct rpc_xprt *xprt, struct net *net)
{
 kref_init(&xprt->kref);

 spin_lock_init(&xprt->transport_lock);
 spin_lock_init(&xprt->reserve_lock);
 spin_lock_init(&xprt->queue_lock);

 INIT_LIST_HEAD(&xprt->free);
 xprt->recv_queue = RB_ROOT;
 INIT_LIST_HEAD(&xprt->xmit_queue);




 INIT_LIST_HEAD(&xprt->xprt_switch);

 xprt->last_used = jiffies;
 xprt->cwnd = RPC_INITCWND;
 xprt->bind_index = 0;

 rpc_init_wait_queue(&xprt->binding, "xprt_binding");
 rpc_init_wait_queue(&xprt->pending, "xprt_pending");
 rpc_init_wait_queue(&xprt->sending, "xprt_sending");
 rpc_init_priority_wait_queue(&xprt->backlog, "xprt_backlog");

 xprt_init_xid(xprt);

 xprt->xprt_net = get_net(net);
}
