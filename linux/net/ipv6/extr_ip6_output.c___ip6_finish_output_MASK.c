#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct net {int dummy; } ;
struct TYPE_7__ {scalar_t__ frag_max_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {scalar_t__ xfrm; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSKB_REROUTED ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct net*,struct sock*,struct sk_buff*) ; 
 int FUNC4 (struct net*,struct sock*,struct sk_buff*) ; 
 int FUNC5 (struct net*,struct sock*,struct sk_buff*,int (*) (struct net*,struct sock*,struct sk_buff*)) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct net *net, struct sock *sk, struct sk_buff *skb)
{
#if defined(CONFIG_NETFILTER) && defined(CONFIG_XFRM)
	/* Policy lookup after SNAT yielded a new policy */
	if (skb_dst(skb)->xfrm) {
		IPCB(skb)->flags |= IPSKB_REROUTED;
		return dst_output(net, sk, skb);
	}
#endif

	if ((skb->len > FUNC6(skb) && !FUNC8(skb)) ||
	    FUNC2(FUNC7(skb)) ||
	    (FUNC0(skb)->frag_max_size && skb->len > FUNC0(skb)->frag_max_size))
		return FUNC5(net, sk, skb, ip6_finish_output2);
	else
		return FUNC4(net, sk, skb);
}