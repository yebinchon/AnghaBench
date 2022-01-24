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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_sndbuf; int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_receive_queue; } ;
struct pep_sock {int /*<<< orphan*/  tx_credits; int /*<<< orphan*/  ctrlreq_queue; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLPRI ; 
 int EPOLLRDNORM ; 
 int EPOLLWRBAND ; 
 int EPOLLWRNORM ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ TCP_CLOSE_WAIT ; 
 scalar_t__ TCP_ESTABLISHED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct pep_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC6(struct file *file, struct socket *sock,
					poll_table *wait)
{
	struct sock *sk = sock->sk;
	struct pep_sock *pn = FUNC1(sk);
	__poll_t mask = 0;

	FUNC2(file, FUNC4(sk), wait);

	if (sk->sk_state == TCP_CLOSE)
		return EPOLLERR;
	if (!FUNC5(&sk->sk_receive_queue))
		mask |= EPOLLIN | EPOLLRDNORM;
	if (!FUNC5(&pn->ctrlreq_queue))
		mask |= EPOLLPRI;
	if (!mask && sk->sk_state == TCP_CLOSE_WAIT)
		return EPOLLHUP;

	if (sk->sk_state == TCP_ESTABLISHED &&
		FUNC3(&sk->sk_wmem_alloc) < sk->sk_sndbuf &&
		FUNC0(&pn->tx_credits))
		mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;

	return mask;
}