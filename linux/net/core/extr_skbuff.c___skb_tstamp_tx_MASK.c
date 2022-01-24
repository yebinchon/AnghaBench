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
struct sock {int sk_tsflags; scalar_t__ sk_protocol; scalar_t__ sk_type; } ;
struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  tstamp; } ;
struct TYPE_2__ {int tx_flags; int /*<<< orphan*/  tskey; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPPROTO_TCP ; 
 int SKBTX_ANY_TSTAMP ; 
 int SKBTX_IN_PROGRESS ; 
 scalar_t__ SOCK_STREAM ; 
 int SOF_TIMESTAMPING_OPT_STATS ; 
 int SOF_TIMESTAMPING_OPT_TSONLY ; 
 int SOF_TIMESTAMPING_OPT_TX_SWHW ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct sock*,int,int) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct skb_shared_hwtstamps* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sock*) ; 

void FUNC8(struct sk_buff *orig_skb,
		     struct skb_shared_hwtstamps *hwtstamps,
		     struct sock *sk, int tstype)
{
	struct sk_buff *skb;
	bool tsonly, opt_stats = false;

	if (!sk)
		return;

	if (!hwtstamps && !(sk->sk_tsflags & SOF_TIMESTAMPING_OPT_TX_SWHW) &&
	    FUNC6(orig_skb)->tx_flags & SKBTX_IN_PROGRESS)
		return;

	tsonly = sk->sk_tsflags & SOF_TIMESTAMPING_OPT_TSONLY;
	if (!FUNC5(sk, tsonly))
		return;

	if (tsonly) {
#ifdef CONFIG_INET
		if ((sk->sk_tsflags & SOF_TIMESTAMPING_OPT_STATS) &&
		    sk->sk_protocol == IPPROTO_TCP &&
		    sk->sk_type == SOCK_STREAM) {
			skb = tcp_get_timestamping_opt_stats(sk);
			opt_stats = true;
		} else
#endif
			skb = FUNC1(0, GFP_ATOMIC);
	} else {
		skb = FUNC3(orig_skb, GFP_ATOMIC);
	}
	if (!skb)
		return;

	if (tsonly) {
		FUNC6(skb)->tx_flags |= FUNC6(orig_skb)->tx_flags &
					     SKBTX_ANY_TSTAMP;
		FUNC6(skb)->tskey = FUNC6(orig_skb)->tskey;
	}

	if (hwtstamps)
		*FUNC4(skb) = *hwtstamps;
	else
		skb->tstamp = FUNC2();

	FUNC0(skb, sk, tstype, opt_stats);
}