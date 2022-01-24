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
struct socket {int /*<<< orphan*/ * ops; } ;
struct sock {int sk_protocol; int /*<<< orphan*/  sk_destruct; } ;
struct rds_sock {int /*<<< orphan*/  rs_item; int /*<<< orphan*/ * rs_conn; scalar_t__ rs_tos; scalar_t__ rs_rx_traces; int /*<<< orphan*/  rs_rdma_keys; int /*<<< orphan*/  rs_rdma_lock; int /*<<< orphan*/  rs_zcookie_queue; int /*<<< orphan*/  rs_cong_list; int /*<<< orphan*/  rs_notify_queue; int /*<<< orphan*/  rs_recv_queue; int /*<<< orphan*/  rs_send_queue; int /*<<< orphan*/  rs_recv_lock; int /*<<< orphan*/  rs_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_proto_ops ; 
 struct rds_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  rds_sock_count ; 
 int /*<<< orphan*/  rds_sock_destruct ; 
 int /*<<< orphan*/  rds_sock_list ; 
 int /*<<< orphan*/  rds_sock_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct socket *sock, struct sock *sk, int protocol)
{
	struct rds_sock *rs;

	FUNC5(sock, sk);
	sock->ops		= &rds_proto_ops;
	sk->sk_protocol		= protocol;
	sk->sk_destruct		= rds_sock_destruct;

	rs = FUNC3(sk);
	FUNC7(&rs->rs_lock);
	FUNC4(&rs->rs_recv_lock);
	FUNC0(&rs->rs_send_queue);
	FUNC0(&rs->rs_recv_queue);
	FUNC0(&rs->rs_notify_queue);
	FUNC0(&rs->rs_cong_list);
	FUNC2(&rs->rs_zcookie_queue);
	FUNC7(&rs->rs_rdma_lock);
	rs->rs_rdma_keys = RB_ROOT;
	rs->rs_rx_traces = 0;
	rs->rs_tos = 0;
	rs->rs_conn = NULL;

	FUNC6(&rds_sock_lock);
	FUNC1(&rs->rs_item, &rds_sock_list);
	rds_sock_count++;
	FUNC8(&rds_sock_lock);

	return 0;
}