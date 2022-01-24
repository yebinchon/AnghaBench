#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct sock {TYPE_2__ sk_write_queue; TYPE_1__ sk_receive_queue; } ;
struct TYPE_8__ {scalar_t__ pg_vec; } ;
struct TYPE_7__ {scalar_t__ pg_vec; } ;
struct packet_sock {TYPE_4__ tx_ring; TYPE_3__ rx_ring; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  TP_STATUS_AVAILABLE ; 
 int /*<<< orphan*/  TP_STATUS_KERNEL ; 
 int FUNC0 (struct file*,struct socket*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct packet_sock*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct packet_sock*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct packet_sock*) ; 
 struct packet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC7(struct file *file, struct socket *sock,
				poll_table *wait)
{
	struct sock *sk = sock->sk;
	struct packet_sock *po = FUNC4(sk);
	__poll_t mask = FUNC0(file, sock, wait);

	FUNC5(&sk->sk_receive_queue.lock);
	if (po->rx_ring.pg_vec) {
		if (!FUNC2(po, &po->rx_ring,
			TP_STATUS_KERNEL))
			mask |= EPOLLIN | EPOLLRDNORM;
	}
	FUNC3(po);
	FUNC6(&sk->sk_receive_queue.lock);
	FUNC5(&sk->sk_write_queue.lock);
	if (po->tx_ring.pg_vec) {
		if (FUNC1(po, &po->tx_ring, TP_STATUS_AVAILABLE))
			mask |= EPOLLOUT | EPOLLWRNORM;
	}
	FUNC6(&sk->sk_write_queue.lock);
	return mask;
}