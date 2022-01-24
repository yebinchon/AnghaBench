#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ mode; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ protocol; int len; scalar_t__ sk; int /*<<< orphan*/  ignore_df; } ;
struct net {int dummy; } ;
struct dst_entry {struct xfrm_state* xfrm; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IP6SKB_REROUTED ; 
 scalar_t__ XFRM_MODE_TUNNEL ; 
 int /*<<< orphan*/  __xfrm6_output_finish ; 
 int FUNC1 (struct xfrm_state*,struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct dst_entry*) ; 
 int FUNC3 (struct dst_entry*) ; 
 int FUNC4 (struct net*,struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net*,struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct dst_entry* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC14(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC9(skb);
	struct xfrm_state *x = dst->xfrm;
	int mtu;
	bool toobig;

#ifdef CONFIG_NETFILTER
	if (!x) {
		IP6CB(skb)->flags |= IP6SKB_REROUTED;
		return dst_output(net, sk, skb);
	}
#endif

	if (x->props.mode != XFRM_MODE_TUNNEL)
		goto skip_frag;

	if (skb->protocol == FUNC5(ETH_P_IPV6))
		mtu = FUNC7(skb);
	else
		mtu = FUNC3(FUNC9(skb));

	toobig = skb->len > mtu && !FUNC10(skb);

	if (toobig && FUNC11(skb)) {
		FUNC12(skb, mtu);
		FUNC8(skb);
		return -EMSGSIZE;
	} else if (!skb->ignore_df && toobig && skb->sk) {
		FUNC13(skb, mtu);
		FUNC8(skb);
		return -EMSGSIZE;
	}

	if (toobig || FUNC2(FUNC9(skb)))
		return FUNC6(net, sk, skb,
				    __xfrm6_output_finish);

skip_frag:
	return FUNC1(x, sk, skb);
}