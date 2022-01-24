#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_ax25 {scalar_t__ sax25_family; int /*<<< orphan*/  sax25_call; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct nr_sock {int my_index; int my_id; int /*<<< orphan*/  state; int /*<<< orphan*/  dest_addr; struct net_device* device; void* source_addr; void* user_addr; } ;
struct net_device {scalar_t__ dev_addr; } ;
struct full_sockaddr_ax25 {int dummy; } ;
struct TYPE_4__ {void* call; } ;
typedef  TYPE_1__ ax25_uid_assoc ;
typedef  void* ax25_address ;

/* Variables and functions */
 scalar_t__ AF_NETROM ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ECONNREFUSED ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EISCONN ; 
 int ENETUNREACH ; 
 int EPERM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  NR_STATE_1 ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 void* SS_CONNECTED ; 
 scalar_t__ SS_CONNECTING ; 
 void* SS_UNCONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ TCP_ESTABLISHED ; 
 scalar_t__ TCP_SYN_SENT ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ax25_uid_policy ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int circuit ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct net_device* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 struct nr_sock* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int FUNC19 (struct sock*) ; 
 scalar_t__ FUNC20 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC22(struct socket *sock, struct sockaddr *uaddr,
	int addr_len, int flags)
{
	struct sock *sk = sock->sk;
	struct nr_sock *nr = FUNC12(sk);
	struct sockaddr_ax25 *addr = (struct sockaddr_ax25 *)uaddr;
	ax25_address *source = NULL;
	ax25_uid_assoc *user;
	struct net_device *dev;
	int err = 0;

	FUNC7(sk);
	if (sk->sk_state == TCP_ESTABLISHED && sock->state == SS_CONNECTING) {
		sock->state = SS_CONNECTED;
		goto out_release;	/* Connect completed during a ERESTARTSYS event */
	}

	if (sk->sk_state == TCP_CLOSE && sock->state == SS_CONNECTING) {
		sock->state = SS_UNCONNECTED;
		err = -ECONNREFUSED;
		goto out_release;
	}

	if (sk->sk_state == TCP_ESTABLISHED) {
		err = -EISCONN;	/* No reconnect on a seqpacket socket */
		goto out_release;
	}

	sk->sk_state   = TCP_CLOSE;
	sock->state = SS_UNCONNECTED;

	if (addr_len != sizeof(struct sockaddr_ax25) && addr_len != sizeof(struct full_sockaddr_ax25)) {
		err = -EINVAL;
		goto out_release;
	}
	if (addr->sax25_family != AF_NETROM) {
		err = -EINVAL;
		goto out_release;
	}
	if (FUNC20(sk, SOCK_ZAPPED)) {	/* Must bind first - autobinding in this may or may not work */
		FUNC21(sk, SOCK_ZAPPED);

		if ((dev = FUNC8()) == NULL) {
			err = -ENETUNREACH;
			goto out_release;
		}
		source = (ax25_address *)dev->dev_addr;

		user = FUNC1(FUNC4());
		if (user) {
			nr->user_addr   = user->call;
			FUNC2(user);
		} else {
			if (ax25_uid_policy && !FUNC3(CAP_NET_ADMIN)) {
				FUNC5(dev);
				err = -EPERM;
				goto out_release;
			}
			nr->user_addr   = *source;
		}

		nr->source_addr = *source;
		nr->device      = dev;

		FUNC5(dev);
		FUNC11(sk);		/* Finish the bind */
	}

	nr->dest_addr = addr->sax25_call;

	FUNC15(sk);
	circuit = FUNC10();
	FUNC7(sk);

	nr->my_index = circuit / 256;
	nr->my_id    = circuit % 256;

	circuit++;

	/* Move to connecting socket, start sending Connect Requests */
	sock->state  = SS_CONNECTING;
	sk->sk_state = TCP_SYN_SENT;

	FUNC9(sk);

	nr->state = NR_STATE_1;

	FUNC13(sk);

	/* Now the loop */
	if (sk->sk_state != TCP_ESTABLISHED && (flags & O_NONBLOCK)) {
		err = -EINPROGRESS;
		goto out_release;
	}

	/*
	 * A Connect Ack with Choke or timeout or failed routing will go to
	 * closed.
	 */
	if (sk->sk_state == TCP_SYN_SENT) {
		FUNC0(wait);

		for (;;) {
			FUNC14(FUNC18(sk), &wait,
					TASK_INTERRUPTIBLE);
			if (sk->sk_state != TCP_SYN_SENT)
				break;
			if (!FUNC17(current)) {
				FUNC15(sk);
				FUNC16();
				FUNC7(sk);
				continue;
			}
			err = -ERESTARTSYS;
			break;
		}
		FUNC6(FUNC18(sk), &wait);
		if (err)
			goto out_release;
	}

	if (sk->sk_state != TCP_ESTABLISHED) {
		sock->state = SS_UNCONNECTED;
		err = FUNC19(sk);	/* Always set at this point */
		goto out_release;
	}

	sock->state = SS_CONNECTED;

out_release:
	FUNC15(sk);

	return err;
}