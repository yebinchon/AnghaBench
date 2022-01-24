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
struct xfrm_state_afinfo {int (* output_finish ) (struct sock*,struct sk_buff*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  family; } ;
struct xfrm_state {TYPE_1__ outer_mode; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {struct xfrm_state* xfrm; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSKB_REROUTED ; 
 int FUNC1 (struct net*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct xfrm_state_afinfo const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sock*,struct sk_buff*) ; 
 struct xfrm_state_afinfo* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct xfrm_state *x = FUNC6(skb)->xfrm;
	const struct xfrm_state_afinfo *afinfo;
	int ret = -EAFNOSUPPORT;

#ifdef CONFIG_NETFILTER
	if (!x) {
		IPCB(skb)->flags |= IPSKB_REROUTED;
		return dst_output(net, sk, skb);
	}
#endif

	FUNC4();
	afinfo = FUNC8(x->outer_mode.family);
	if (FUNC3(afinfo))
		ret = afinfo->output_finish(sk, skb);
	else
		FUNC2(skb);
	FUNC5();

	return ret;
}