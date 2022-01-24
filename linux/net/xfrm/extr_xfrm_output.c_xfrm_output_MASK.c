#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* dev; } ;
struct xfrm_state {TYPE_2__ xso; } ;
struct sock {int dummy; } ;
struct sk_buff {int encapsulation; scalar_t__ ip_summed; } ;
struct sec_path {int /*<<< orphan*/  len; struct xfrm_state** xvec; int /*<<< orphan*/  olen; } ;
struct net {int dummy; } ;
struct TYPE_8__ {struct xfrm_state* xfrm; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  gso_type; } ;
struct TYPE_5__ {int features; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTERROR ; 
 int NETIF_F_HW_ESP_TX_CSUM ; 
 int /*<<< orphan*/  SKB_GSO_ESP ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sec_path* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 TYPE_4__* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 TYPE_3__* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,struct xfrm_state*) ; 
 int FUNC10 (struct net*,struct sock*,struct sk_buff*) ; 
 int FUNC11 (struct net*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfrm_state*) ; 

int FUNC13(struct sock *sk, struct sk_buff *skb)
{
	struct net *net = FUNC1(FUNC6(skb)->dev);
	struct xfrm_state *x = FUNC6(skb)->xfrm;
	int err;

	FUNC3(skb);

	if (FUNC9(skb, x)) {
		struct sec_path *sp;

		sp = FUNC4(skb);
		if (!sp) {
			FUNC0(net, LINUX_MIB_XFRMOUTERROR);
			FUNC2(skb);
			return -ENOMEM;
		}
		skb->encapsulation = 1;

		sp->olen++;
		sp->xvec[sp->len++] = x;
		FUNC12(x);

		if (FUNC7(skb)) {
			FUNC8(skb)->gso_type |= SKB_GSO_ESP;

			return FUNC10(net, sk, skb);
		}

		if (x->xso.dev && x->xso.dev->features & NETIF_F_HW_ESP_TX_CSUM)
			goto out;
	}

	if (FUNC7(skb))
		return FUNC11(net, sk, skb);

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		err = FUNC5(skb);
		if (err) {
			FUNC0(net, LINUX_MIB_XFRMOUTERROR);
			FUNC2(skb);
			return err;
		}
	}

out:
	return FUNC10(net, sk, skb);
}