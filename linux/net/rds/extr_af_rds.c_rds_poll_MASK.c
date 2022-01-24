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
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_error_queue; scalar_t__ sk_err; } ;
struct TYPE_2__ {int /*<<< orphan*/  zcookie_head; } ;
struct rds_sock {scalar_t__ rs_snd_bytes; scalar_t__ rs_seen_congestion; int /*<<< orphan*/  rs_recv_lock; TYPE_1__ rs_zcookie_queue; int /*<<< orphan*/  rs_notify_queue; int /*<<< orphan*/  rs_recv_queue; int /*<<< orphan*/  rs_lock; scalar_t__ rs_cong_notify; int /*<<< orphan*/  rs_cong_track; int /*<<< orphan*/  rs_cong_monitor; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRBAND ; 
 int EPOLLWRNORM ; 
 int POLLERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_poll_waitq ; 
 scalar_t__ FUNC3 (struct rds_sock*) ; 
 struct rds_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC11(struct file *file, struct socket *sock,
			     poll_table *wait)
{
	struct sock *sk = sock->sk;
	struct rds_sock *rs = FUNC4(sk);
	__poll_t mask = 0;
	unsigned long flags;

	FUNC1(file, FUNC7(sk), wait);

	if (rs->rs_seen_congestion)
		FUNC1(file, &rds_poll_waitq, wait);

	FUNC5(&rs->rs_recv_lock, flags);
	if (!rs->rs_cong_monitor) {
		/* When a congestion map was updated, we signal EPOLLIN for
		 * "historical" reasons. Applications can also poll for
		 * WRBAND instead. */
		if (FUNC2(&rs->rs_cong_track))
			mask |= (EPOLLIN | EPOLLRDNORM | EPOLLWRBAND);
	} else {
		FUNC9(&rs->rs_lock);
		if (rs->rs_cong_notify)
			mask |= (EPOLLIN | EPOLLRDNORM);
		FUNC10(&rs->rs_lock);
	}
	if (!FUNC0(&rs->rs_recv_queue) ||
	    !FUNC0(&rs->rs_notify_queue) ||
	    !FUNC0(&rs->rs_zcookie_queue.zcookie_head))
		mask |= (EPOLLIN | EPOLLRDNORM);
	if (rs->rs_snd_bytes < FUNC3(rs))
		mask |= (EPOLLOUT | EPOLLWRNORM);
	if (sk->sk_err || !FUNC8(&sk->sk_error_queue))
		mask |= POLLERR;
	FUNC6(&rs->rs_recv_lock, flags);

	/* clear state any time we wake a seen-congested socket */
	if (mask)
		rs->rs_seen_congestion = 0;

	return mask;
}