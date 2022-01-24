#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; scalar_t__ sk_err; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ traffic_class; } ;
struct TYPE_4__ {TYPE_1__ txtp; } ;
struct atm_vcc {TYPE_2__ qos; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 scalar_t__ ATM_NONE ; 
 struct atm_vcc* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  ATM_VF_CLOSE ; 
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int /*<<< orphan*/  ATM_VF_WAITING ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRBAND ; 
 int EPOLLWRNORM ; 
 scalar_t__ SS_CONNECTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct socket*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sock*) ; 

__poll_t FUNC5(struct file *file, struct socket *sock, poll_table *wait)
{
	struct sock *sk = sock->sk;
	struct atm_vcc *vcc;
	__poll_t mask;

	FUNC2(file, sock, wait);
	mask = 0;

	vcc = FUNC0(sock);

	/* exceptional events */
	if (sk->sk_err)
		mask = EPOLLERR;

	if (FUNC3(ATM_VF_RELEASED, &vcc->flags) ||
	    FUNC3(ATM_VF_CLOSE, &vcc->flags))
		mask |= EPOLLHUP;

	/* readable? */
	if (!FUNC1(&sk->sk_receive_queue))
		mask |= EPOLLIN | EPOLLRDNORM;

	/* writable? */
	if (sock->state == SS_CONNECTING &&
	    FUNC3(ATM_VF_WAITING, &vcc->flags))
		return mask;

	if (vcc->qos.txtp.traffic_class != ATM_NONE &&
	    FUNC4(sk))
		mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;

	return mask;
}