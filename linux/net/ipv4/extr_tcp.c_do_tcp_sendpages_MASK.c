#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {int /*<<< orphan*/  nonagle; scalar_t__ write_seq; } ;
struct sock {int sk_state; int sk_shutdown; int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_tsflags; TYPE_1__* sk_socket; int /*<<< orphan*/  sk_allocation; scalar_t__ sk_err; } ;
struct sk_buff {int len; int decrypted; int data_len; int truesize; int /*<<< orphan*/  ip_summed; } ;
struct page {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_6__ {int end_seq; int /*<<< orphan*/  tcp_flags; } ;
struct TYPE_5__ {int nr_frags; int /*<<< orphan*/  tx_flags; int /*<<< orphan*/ * frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  CONFIG_DEBUG_VM ; 
 int EAGAIN ; 
 scalar_t__ EINVAL ; 
 int EPIPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MSG_DONTWAIT ; 
 int MSG_MORE ; 
 int MSG_NO_SHARED_FRAGS ; 
 int MSG_OOB ; 
 int MSG_SENDPAGE_DECRYPTED ; 
 int MSG_SENDPAGE_NOTLAST ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SKBTX_SHARED_FRAG ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int TCPF_CLOSE_WAIT ; 
 int TCPF_ESTABLISHED ; 
 int /*<<< orphan*/  TCPHDR_PSH ; 
 int /*<<< orphan*/  TCP_CHRONO_SNDBUF_LIMITED ; 
 int /*<<< orphan*/  TCP_NAGLE_PUSH ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int) ; 
 struct sk_buff* FUNC11 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sock*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int FUNC14 (struct sock*,long*) ; 
 int FUNC15 (struct sock*,long*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,int) ; 
 int FUNC18 (struct sk_buff*,int,struct page*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int,struct page*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC23 (struct sk_buff*) ; 
 long FUNC24 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 
 int sysctl_max_skb_frags ; 
 int /*<<< orphan*/  FUNC26 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct tcp_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*) ; 
 int /*<<< orphan*/  FUNC29 (struct sock*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC32 (struct sock*) ; 
 struct sk_buff* FUNC33 (struct sock*) ; 
 int FUNC34 (struct sock*,int*,int) ; 
 struct tcp_sock* FUNC35 (struct sock*) ; 
 int /*<<< orphan*/  FUNC36 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC37 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC39 (struct sock*) ; 
 scalar_t__ FUNC40 (int) ; 

ssize_t FUNC41(struct sock *sk, struct page *page, int offset,
			 size_t size, int flags)
{
	struct tcp_sock *tp = FUNC35(sk);
	int mss_now, size_goal;
	int err;
	ssize_t copied;
	long timeo = FUNC24(sk, flags & MSG_DONTWAIT);

	if (FUNC0(CONFIG_DEBUG_VM) &&
	    FUNC3(FUNC1(page), "page must not be a Slab one"))
		return -EINVAL;

	/* Wait for a connection to finish. One exception is TCP Fast Open
	 * (passive side) where data is allowed to be sent before a connection
	 * is fully established.
	 */
	if (((1 << sk->sk_state) & ~(TCPF_ESTABLISHED | TCPF_CLOSE_WAIT)) &&
	    !FUNC28(sk)) {
		err = FUNC14(sk, &timeo);
		if (err != 0)
			goto out_err;
	}

	FUNC9(SOCKWQ_ASYNC_NOSPACE, sk);

	mss_now = FUNC34(sk, &size_goal, flags);
	copied = 0;

	err = -EPIPE;
	if (sk->sk_err || (sk->sk_shutdown & SEND_SHUTDOWN))
		goto out_err;

	while (size > 0) {
		struct sk_buff *skb = FUNC39(sk);
		int copy, i;
		bool can_coalesce;

		if (!skb || (copy = size_goal - skb->len) <= 0 ||
		    !FUNC36(skb)) {
new_segment:
			if (!FUNC13(sk))
				goto wait_for_sndbuf;

			skb = FUNC11(sk, 0, sk->sk_allocation,
					FUNC32(sk));
			if (!skb)
				goto wait_for_memory;

#ifdef CONFIG_TLS_DEVICE
			skb->decrypted = !!(flags & MSG_SENDPAGE_DECRYPTED);
#endif
			FUNC19(sk, skb);
			copy = size_goal;
		}

		if (copy > size)
			copy = size;

		i = FUNC23(skb)->nr_frags;
		can_coalesce = FUNC18(skb, i, page, offset);
		if (!can_coalesce && i >= sysctl_max_skb_frags) {
			FUNC27(tp, skb);
			goto new_segment;
		}
		if (!FUNC17(sk, copy))
			goto wait_for_memory;

		if (can_coalesce) {
			FUNC21(&FUNC23(skb)->frags[i - 1], copy);
		} else {
			FUNC7(page);
			FUNC20(skb, i, page, offset, copy);
		}

		if (!(flags & MSG_NO_SHARED_FRAGS))
			FUNC23(skb)->tx_flags |= SKBTX_SHARED_FRAG;

		skb->len += copy;
		skb->data_len += copy;
		skb->truesize += copy;
		FUNC16(sk, copy);
		FUNC10(sk, copy);
		skb->ip_summed = CHECKSUM_PARTIAL;
		FUNC4(tp->write_seq, tp->write_seq + copy);
		FUNC2(skb)->end_seq += copy;
		FUNC37(skb, 0);

		if (!copied)
			FUNC2(skb)->tcp_flags &= ~TCPHDR_PSH;

		copied += copy;
		offset += copy;
		size -= copy;
		if (!size)
			goto out;

		if (skb->len < size_goal || (flags & MSG_OOB))
			continue;

		if (FUNC6(tp)) {
			FUNC27(tp, skb);
			FUNC5(sk, mss_now, TCP_NAGLE_PUSH);
		} else if (skb == FUNC33(sk))
			FUNC30(sk, mss_now);
		continue;

wait_for_sndbuf:
		FUNC8(SOCK_NOSPACE, &sk->sk_socket->flags);
wait_for_memory:
		FUNC29(sk, flags & ~MSG_MORE, mss_now,
			 TCP_NAGLE_PUSH, size_goal);

		err = FUNC15(sk, &timeo);
		if (err != 0)
			goto do_error;

		mss_now = FUNC34(sk, &size_goal, flags);
	}

out:
	if (copied) {
		FUNC38(sk, sk->sk_tsflags);
		if (!(flags & MSG_SENDPAGE_NOTLAST))
			FUNC29(sk, flags, mss_now, tp->nonagle, size_goal);
	}
	return copied;

do_error:
	FUNC31(sk, FUNC39(sk));
	if (copied)
		goto out;
out_err:
	/* make sure we wake any epoll edge trigger waiter */
	if (FUNC40(FUNC22(&sk->sk_write_queue) == 0 &&
		     err == -EAGAIN)) {
		sk->sk_write_space(sk);
		FUNC26(sk, TCP_CHRONO_SNDBUF_LIMITED);
	}
	return FUNC12(sk, flags, err);
}