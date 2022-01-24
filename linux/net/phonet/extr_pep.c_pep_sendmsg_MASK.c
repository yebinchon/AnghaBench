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
struct sock {int sk_state; } ;
struct sk_buff {int dummy; } ;
struct pep_sock {int /*<<< orphan*/  tx_credits; scalar_t__ aligned; } ;
struct msghdr {int msg_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ECONNRESET ; 
 int EMSGSIZE ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 scalar_t__ MAX_PHONET_HEADER ; 
 scalar_t__ MAX_PNPIPE_HEADER ; 
 int MSG_CMSG_COMPAT ; 
 int MSG_DONTWAIT ; 
 int MSG_EOR ; 
 int MSG_NOSIGNAL ; 
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 int TCP_CLOSE_WAIT ; 
 int TCP_ESTABLISHED ; 
 size_t USHRT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct msghdr*,size_t) ; 
 struct pep_sock* FUNC7 (struct sock*) ; 
 int FUNC8 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int FUNC13 (struct sock*,long*) ; 
 int FUNC14 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,scalar_t__) ; 
 struct sk_buff* FUNC17 (struct sock*,scalar_t__,int,int*) ; 
 int FUNC18 (long) ; 
 long FUNC19 (struct sock*,int) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC20(struct sock *sk, struct msghdr *msg, size_t len)
{
	struct pep_sock *pn = FUNC7(sk);
	struct sk_buff *skb;
	long timeo;
	int flags = msg->msg_flags;
	int err, done;

	if (len > USHRT_MAX)
		return -EMSGSIZE;

	if ((msg->msg_flags & ~(MSG_DONTWAIT|MSG_EOR|MSG_NOSIGNAL|
				MSG_CMSG_COMPAT)) ||
			!(msg->msg_flags & MSG_EOR))
		return -EOPNOTSUPP;

	skb = FUNC17(sk, MAX_PNPIPE_HEADER + len,
					flags & MSG_DONTWAIT, &err);
	if (!skb)
		return err;

	FUNC16(skb, MAX_PHONET_HEADER + 3 + pn->aligned);
	err = FUNC6(FUNC15(skb, len), msg, len);
	if (err < 0)
		goto outfree;

	FUNC5(sk);
	timeo = FUNC19(sk, flags & MSG_DONTWAIT);
	if ((1 << sk->sk_state) & (TCPF_LISTEN|TCPF_CLOSE)) {
		err = -ENOTCONN;
		goto out;
	}
	if (sk->sk_state != TCP_ESTABLISHED) {
		/* Wait until the pipe gets to enabled state */
disabled:
		err = FUNC13(sk, &timeo);
		if (err)
			goto out;

		if (sk->sk_state == TCP_CLOSE_WAIT) {
			err = -ECONNRESET;
			goto out;
		}
	}
	FUNC0(sk->sk_state != TCP_ESTABLISHED);

	/* Wait until flow control allows TX */
	done = FUNC3(&pn->tx_credits);
	while (!done) {
		FUNC1(wait, woken_wake_function);

		if (!timeo) {
			err = -EAGAIN;
			goto out;
		}
		if (FUNC11(current)) {
			err = FUNC18(timeo);
			goto out;
		}

		FUNC2(FUNC12(sk), &wait);
		done = FUNC14(sk, &timeo, FUNC3(&pn->tx_credits), &wait);
		FUNC10(FUNC12(sk), &wait);

		if (sk->sk_state != TCP_ESTABLISHED)
			goto disabled;
	}

	err = FUNC8(sk, skb);
	if (err >= 0)
		err = len; /* success! */
	skb = NULL;
out:
	FUNC9(sk);
outfree:
	FUNC4(skb);
	return err;
}