#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct tcphdr {int /*<<< orphan*/  seq; int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;
struct tcp_sock {void* mtu_info; int /*<<< orphan*/  snd_nxt; void* snd_una; int /*<<< orphan*/  fastopen_rsk; } ;
struct sock {int sk_state; int sk_err; int sk_err_soft; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_tsq_flags; } ;
struct sk_buff {TYPE_4__* dev; scalar_t__ data; } ;
struct request_sock {int /*<<< orphan*/  sk; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ipv6_pinfo {scalar_t__ min_hopcount; scalar_t__ recverr; int /*<<< orphan*/  dst_cookie; } ;
struct inet6_skb_parm {int dummy; } ;
struct dst_entry {TYPE_1__* ops; } ;
typedef  void* __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_9__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_8__ {scalar_t__ hop_limit; } ;
struct TYPE_7__ {void* snt_isn; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* redirect ) (struct dst_entry*,struct sock*,struct sk_buff*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  ICMP6_MIB_INERRORS ; 
 scalar_t__ ICMPV6_PKT_TOOBIG ; 
 int /*<<< orphan*/  LINUX_MIB_LOCKDROPPEDICMPS ; 
 int /*<<< orphan*/  LINUX_MIB_OUTOFWINDOWICMPS ; 
 int /*<<< orphan*/  LINUX_MIB_TCPMINTTLDROP ; 
 scalar_t__ NDISC_REDIRECT ; 
 int TCP_CLOSE ; 
 int TCP_LISTEN ; 
 int /*<<< orphan*/  TCP_MTU_REDUCED_DEFERRED ; 
 int TCP_NEW_SYN_RECV ; 
#define  TCP_SYN_RECV 129 
#define  TCP_SYN_SENT 128 
 int TCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 struct sock* FUNC3 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct net* FUNC8 (TYPE_4__*) ; 
 int FUNC9 (scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 TYPE_3__* FUNC14 (struct sk_buff*) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct request_sock* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 scalar_t__ FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct dst_entry*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  tcp_hashinfo ; 
 struct ipv6_pinfo* FUNC25 (struct sock*) ; 
 int /*<<< orphan*/  FUNC26 (struct sock*,void*,int) ; 
 TYPE_2__* FUNC27 (struct request_sock*) ; 
 struct tcp_sock* FUNC28 (struct sock*) ; 
 int /*<<< orphan*/  FUNC29 (struct sock*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC31(struct sk_buff *skb, struct inet6_skb_parm *opt,
		u8 type, u8 code, int offset, __be32 info)
{
	const struct ipv6hdr *hdr = (const struct ipv6hdr *)skb->data;
	const struct tcphdr *th = (struct tcphdr *)(skb->data+offset);
	struct net *net = FUNC8(skb->dev);
	struct request_sock *fastopen;
	struct ipv6_pinfo *np;
	struct tcp_sock *tp;
	__u32 seq, snd_una;
	struct sock *sk;
	bool fatal;
	int err;

	sk = FUNC3(net, &tcp_hashinfo,
					&hdr->daddr, th->dest,
					&hdr->saddr, FUNC16(th->source),
					skb->dev->ifindex, FUNC10(skb));

	if (!sk) {
		FUNC0(net, FUNC2(skb->dev),
				  ICMP6_MIB_INERRORS);
		return -ENOENT;
	}

	if (sk->sk_state == TCP_TIME_WAIT) {
		FUNC12(FUNC11(sk));
		return 0;
	}
	seq = FUNC15(th->seq);
	fatal = FUNC9(type, code, &err);
	if (sk->sk_state == TCP_NEW_SYN_RECV) {
		FUNC26(sk, seq, fatal);
		return 0;
	}

	FUNC6(sk);
	if (FUNC19(sk) && type != ICMPV6_PKT_TOOBIG)
		FUNC1(net, LINUX_MIB_LOCKDROPPEDICMPS);

	if (sk->sk_state == TCP_CLOSE)
		goto out;

	if (FUNC14(skb)->hop_limit < FUNC25(sk)->min_hopcount) {
		FUNC1(net, LINUX_MIB_TCPMINTTLDROP);
		goto out;
	}

	tp = FUNC28(sk);
	/* XXX (TFO) - tp->snd_una should be ISN (tcp_create_openreq_child() */
	fastopen = FUNC17(tp->fastopen_rsk);
	snd_una = fastopen ? FUNC27(fastopen)->snt_isn : tp->snd_una;
	if (sk->sk_state != TCP_LISTEN &&
	    !FUNC5(seq, snd_una, tp->snd_nxt)) {
		FUNC1(net, LINUX_MIB_OUTOFWINDOWICMPS);
		goto out;
	}

	np = FUNC25(sk);

	if (type == NDISC_REDIRECT) {
		if (!FUNC19(sk)) {
			struct dst_entry *dst = FUNC4(sk, np->dst_cookie);

			if (dst)
				dst->ops->redirect(dst, sk, skb);
		}
		goto out;
	}

	if (type == ICMPV6_PKT_TOOBIG) {
		/* We are not interested in TCP_LISTEN and open_requests
		 * (SYN-ACKs send out by Linux are always <576bytes so
		 * they should go through unfragmented).
		 */
		if (sk->sk_state == TCP_LISTEN)
			goto out;

		if (!FUNC13(sk))
			goto out;

		tp->mtu_info = FUNC15(info);
		if (!FUNC19(sk))
			FUNC29(sk);
		else if (!FUNC30(TCP_MTU_REDUCED_DEFERRED,
					   &sk->sk_tsq_flags))
			FUNC18(sk);
		goto out;
	}


	/* Might be for an request_sock */
	switch (sk->sk_state) {
	case TCP_SYN_SENT:
	case TCP_SYN_RECV:
		/* Only in fast or simultaneous open. If a fast open socket is
		 * is already accepted it is treated as a connected one below.
		 */
		if (fastopen && !fastopen->sk)
			break;

		if (!FUNC19(sk)) {
			sk->sk_err = err;
			sk->sk_error_report(sk);		/* Wake people up to see the error (see connect in sock.c) */

			FUNC24(sk);
		} else
			sk->sk_err_soft = err;
		goto out;
	}

	if (!FUNC19(sk) && np->recverr) {
		sk->sk_err = err;
		sk->sk_error_report(sk);
	} else
		sk->sk_err_soft = err;

out:
	FUNC7(sk);
	FUNC20(sk);
	return 0;
}