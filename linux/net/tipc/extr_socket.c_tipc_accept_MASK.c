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
struct tipc_sock {int /*<<< orphan*/  conn_instance; int /*<<< orphan*/  conn_type; } ;
struct tipc_msg {int dummy; } ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int /*<<< orphan*/ * member_0; } ;

/* Variables and functions */
 int EINVAL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 scalar_t__ TIPC_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct msghdr*,int /*<<< orphan*/ ) ; 
 struct tipc_msg* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 scalar_t__ FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct sock*) ; 
 struct sk_buff* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 long FUNC18 (struct sock*,int) ; 
 struct tipc_sock* FUNC19 (struct sock*) ; 
 int FUNC20 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct tipc_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct socket*,long) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  FUNC25 (struct tipc_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct socket *sock, struct socket *new_sock, int flags,
		       bool kern)
{
	struct sock *new_sk, *sk = sock->sk;
	struct sk_buff *buf;
	struct tipc_sock *new_tsock;
	struct tipc_msg *msg;
	long timeo;
	int res;

	FUNC4(sk);

	if (sk->sk_state != TIPC_LISTEN) {
		res = -EINVAL;
		goto exit;
	}
	timeo = FUNC18(sk, flags & O_NONBLOCK);
	res = FUNC22(sock, timeo);
	if (res)
		goto exit;

	buf = FUNC15(&sk->sk_receive_queue);

	res = FUNC20(FUNC17(sock->sk), new_sock, 0, kern);
	if (res)
		goto exit;
	FUNC14(sock->sk, new_sock->sk);

	new_sk = new_sock->sk;
	new_tsock = FUNC19(new_sk);
	msg = FUNC3(buf);

	/* we lock on new_sk; but lockdep sees the lock on sk */
	FUNC5(new_sk, SINGLE_DEPTH_NESTING);

	/*
	 * Reject any stray messages received by new socket
	 * before the socket lock was taken (very, very unlikely)
	 */
	FUNC24(new_sk);

	/* Connect new socket to it's peer */
	FUNC21(new_tsock, FUNC12(msg), FUNC11(msg));

	FUNC25(new_tsock, FUNC7(msg));
	if (FUNC8(msg)) {
		new_tsock->conn_type = FUNC10(msg);
		new_tsock->conn_instance = FUNC9(msg);
	}

	/*
	 * Respond to 'SYN-' by discarding it & returning 'ACK'-.
	 * Respond to 'SYN+' by queuing it on new socket.
	 */
	if (!FUNC6(msg)) {
		struct msghdr m = {NULL,};

		FUNC23(sk);
		FUNC2(new_sock, &m, 0);
	} else {
		FUNC0(&sk->sk_receive_queue);
		FUNC1(&new_sk->sk_receive_queue, buf);
		FUNC16(buf, new_sk);
	}
	FUNC13(new_sk);
exit:
	FUNC13(sk);
	return res;
}