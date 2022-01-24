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
struct tipc_sock {long conn_timeout; int /*<<< orphan*/  peer; scalar_t__ group; } ;
struct socket {struct sock* sk; } ;
struct sockaddr_tipc {scalar_t__ family; scalar_t__ addrtype; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct msghdr {int msg_namelen; int /*<<< orphan*/  msg_flags; struct sockaddr* msg_name; int /*<<< orphan*/ * member_0; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int EALREADY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EISCONN ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int O_NONBLOCK ; 
#define  TIPC_CONNECTING 130 
#define  TIPC_ESTABLISHED 129 
#define  TIPC_OPEN 128 
 scalar_t__ TIPC_SERVICE_RANGE ; 
 int FUNC0 (struct socket*,struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 long FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct tipc_sock* FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_tipc*) ; 
 int FUNC9 (struct socket*,long*) ; 

__attribute__((used)) static int FUNC10(struct socket *sock, struct sockaddr *dest,
			int destlen, int flags)
{
	struct sock *sk = sock->sk;
	struct tipc_sock *tsk = FUNC6(sk);
	struct sockaddr_tipc *dst = (struct sockaddr_tipc *)dest;
	struct msghdr m = {NULL,};
	long timeout = (flags & O_NONBLOCK) ? 0 : tsk->conn_timeout;
	int previous;
	int res = 0;

	if (destlen != sizeof(struct sockaddr_tipc))
		return -EINVAL;

	FUNC1(sk);

	if (tsk->group) {
		res = -EINVAL;
		goto exit;
	}

	if (dst->family == AF_UNSPEC) {
		FUNC3(&tsk->peer, 0, sizeof(struct sockaddr_tipc));
		if (!FUNC7(sk))
			res = -EINVAL;
		goto exit;
	}
	if (!FUNC8(dst)) {
		res = -EINVAL;
		goto exit;
	}
	/* DGRAM/RDM connect(), just save the destaddr */
	if (FUNC7(sk)) {
		FUNC2(&tsk->peer, dest, destlen);
		goto exit;
	} else if (dst->addrtype == TIPC_SERVICE_RANGE) {
		res = -EINVAL;
		goto exit;
	}

	previous = sk->sk_state;

	switch (sk->sk_state) {
	case TIPC_OPEN:
		/* Send a 'SYN-' to destination */
		m.msg_name = dest;
		m.msg_namelen = destlen;

		/* If connect is in non-blocking case, set MSG_DONTWAIT to
		 * indicate send_msg() is never blocked.
		 */
		if (!timeout)
			m.msg_flags = MSG_DONTWAIT;

		res = FUNC0(sock, &m, 0);
		if ((res < 0) && (res != -EWOULDBLOCK))
			goto exit;

		/* Just entered TIPC_CONNECTING state; the only
		 * difference is that return value in non-blocking
		 * case is EINPROGRESS, rather than EALREADY.
		 */
		res = -EINPROGRESS;
		/* fall through */
	case TIPC_CONNECTING:
		if (!timeout) {
			if (previous == TIPC_CONNECTING)
				res = -EALREADY;
			goto exit;
		}
		timeout = FUNC4(timeout);
		/* Wait until an 'ACK' or 'RST' arrives, or a timeout occurs */
		res = FUNC9(sock, &timeout);
		break;
	case TIPC_ESTABLISHED:
		res = -EISCONN;
		break;
	default:
		res = -EINVAL;
	}

exit:
	FUNC5(sk);
	return res;
}