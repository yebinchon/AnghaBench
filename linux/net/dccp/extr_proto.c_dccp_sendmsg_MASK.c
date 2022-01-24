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
struct sock {int sk_state; TYPE_1__* sk_prot; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct dccp_sock {size_t dccps_mss_cache; int /*<<< orphan*/  dccps_xmit_timer; } ;
struct TYPE_2__ {size_t max_header; } ;

/* Variables and functions */
 int DCCPF_OPEN ; 
 int DCCPF_PARTOPEN ; 
 int DCCP_CLOSED ; 
 int EAGAIN ; 
 int EMSGSIZE ; 
 int ENOTCONN ; 
 int const MSG_DONTWAIT ; 
 int FUNC0 (struct msghdr*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 struct dccp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (struct sock*,long*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,size_t) ; 
 struct sk_buff* FUNC12 (struct sock*,int,int const,int*) ; 
 long FUNC13 (struct sock*,int const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,size_t) ; 

int FUNC16(struct sock *sk, struct msghdr *msg, size_t len)
{
	const struct dccp_sock *dp = FUNC3(sk);
	const int flags = msg->msg_flags;
	const int noblock = flags & MSG_DONTWAIT;
	struct sk_buff *skb;
	int rc, size;
	long timeo;

	FUNC15(sk, len);

	if (len > dp->dccps_mss_cache)
		return -EMSGSIZE;

	FUNC6(sk);

	if (FUNC1(sk)) {
		rc = -EAGAIN;
		goto out_release;
	}

	timeo = FUNC13(sk, noblock);

	/*
	 * We have to use sk_stream_wait_connect here to set sk_write_pending,
	 * so that the trick in dccp_rcv_request_sent_state_process.
	 */
	/* Wait for a connection to finish. */
	if ((1 << sk->sk_state) & ~(DCCPF_OPEN | DCCPF_PARTOPEN))
		if ((rc = FUNC9(sk, &timeo)) != 0)
			goto out_release;

	size = sk->sk_prot->max_header + len;
	FUNC8(sk);
	skb = FUNC12(sk, size, noblock, &rc);
	FUNC6(sk);
	if (skb == NULL)
		goto out_release;

	if (sk->sk_state == DCCP_CLOSED) {
		rc = -ENOTCONN;
		goto out_discard;
	}

	FUNC11(skb, sk->sk_prot->max_header);
	rc = FUNC7(FUNC10(skb, len), msg, len);
	if (rc != 0)
		goto out_discard;

	rc = FUNC0(msg, skb);
	if (rc != 0)
		goto out_discard;

	FUNC2(sk, skb);
	/*
	 * The xmit_timer is set if the TX CCID is rate-based and will expire
	 * when congestion control permits to release further packets into the
	 * network. Window-based CCIDs do not use this timer.
	 */
	if (!FUNC14(&dp->dccps_xmit_timer))
		FUNC4(sk);
out_release:
	FUNC8(sk);
	return rc ? : len;
out_discard:
	FUNC5(skb);
	goto out_release;
}