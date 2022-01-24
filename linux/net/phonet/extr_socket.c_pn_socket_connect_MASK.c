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
struct task_struct {int dummy; } ;
struct socket {int state; struct sock* sk; } ;
struct sockaddr_pn {scalar_t__ spn_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; TYPE_1__* sk_prot; } ;
struct pn_sock {scalar_t__ dobject; int /*<<< orphan*/  resource; } ;
struct TYPE_2__ {int (* connect ) (struct sock*,struct sockaddr*,int) ;} ;

/* Variables and functions */
 scalar_t__ AF_PHONET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAFNOSUPPORT ; 
 int EALREADY ; 
 int ECONNREFUSED ; 
 int ECONNRESET ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EISCONN ; 
 int ENOBUFS ; 
 int O_NONBLOCK ; 
 int const SS_CONNECTED ; 
#define  SS_CONNECTING 129 
#define  SS_UNCONNECTED 128 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int TCPF_ESTABLISHED ; 
 int TCPF_SYN_RECV ; 
 int TCP_CLOSE ; 
 int TCP_CLOSE_WAIT ; 
 int TCP_SYN_SENT ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct pn_sock* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sockaddr_pn*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_pn*) ; 
 scalar_t__ FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 long FUNC9 (long) ; 
 scalar_t__ FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int FUNC12 (long) ; 
 long FUNC13 (struct sock*,int) ; 
 int FUNC14 (struct sock*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC15(struct socket *sock, struct sockaddr *addr,
		int len, int flags)
{
	struct sock *sk = sock->sk;
	struct pn_sock *pn = FUNC3(sk);
	struct sockaddr_pn *spn = (struct sockaddr_pn *)addr;
	struct task_struct *tsk = current;
	long timeo = FUNC13(sk, flags & O_NONBLOCK);
	int err;

	if (FUNC6(sock))
		return -ENOBUFS;
	if (len < sizeof(struct sockaddr_pn))
		return -EINVAL;
	if (spn->spn_family != AF_PHONET)
		return -EAFNOSUPPORT;

	FUNC2(sk);

	switch (sock->state) {
	case SS_UNCONNECTED:
		if (sk->sk_state != TCP_CLOSE) {
			err = -EISCONN;
			goto out;
		}
		break;
	case SS_CONNECTING:
		err = -EALREADY;
		goto out;
	default:
		err = -EISCONN;
		goto out;
	}

	pn->dobject = FUNC4(spn);
	pn->resource = FUNC5(spn);
	sock->state = SS_CONNECTING;

	err = sk->sk_prot->connect(sk, addr, len);
	if (err) {
		sock->state = SS_UNCONNECTED;
		pn->dobject = 0;
		goto out;
	}

	while (sk->sk_state == TCP_SYN_SENT) {
		FUNC0(wait);

		if (!timeo) {
			err = -EINPROGRESS;
			goto out;
		}
		if (FUNC10(tsk)) {
			err = FUNC12(timeo);
			goto out;
		}

		FUNC7(FUNC11(sk), &wait,
						TASK_INTERRUPTIBLE);
		FUNC8(sk);
		timeo = FUNC9(timeo);
		FUNC2(sk);
		FUNC1(FUNC11(sk), &wait);
	}

	if ((1 << sk->sk_state) & (TCPF_SYN_RECV|TCPF_ESTABLISHED))
		err = 0;
	else if (sk->sk_state == TCP_CLOSE_WAIT)
		err = -ECONNRESET;
	else
		err = -ECONNREFUSED;
	sock->state = err ? SS_UNCONNECTED : SS_CONNECTED;
out:
	FUNC8(sk);
	return err;
}