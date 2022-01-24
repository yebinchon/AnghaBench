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
struct sockaddr_qrtr {int /*<<< orphan*/  sq_family; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct qrtr_sock {struct sockaddr_qrtr us; struct sockaddr_qrtr peer; } ;
typedef  int /*<<< orphan*/  qaddr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_QIPCRTR ; 
 int ENOTCONN ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,struct sockaddr_qrtr*,int) ; 
 struct qrtr_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct sockaddr *saddr,
			int peer)
{
	struct qrtr_sock *ipc = FUNC2(sock->sk);
	struct sockaddr_qrtr qaddr;
	struct sock *sk = sock->sk;

	FUNC0(sk);
	if (peer) {
		if (sk->sk_state != TCP_ESTABLISHED) {
			FUNC3(sk);
			return -ENOTCONN;
		}

		qaddr = ipc->peer;
	} else {
		qaddr = ipc->us;
	}
	FUNC3(sk);

	qaddr.sq_family = AF_QIPCRTR;

	FUNC1(saddr, &qaddr, sizeof(qaddr));

	return sizeof(qaddr);
}