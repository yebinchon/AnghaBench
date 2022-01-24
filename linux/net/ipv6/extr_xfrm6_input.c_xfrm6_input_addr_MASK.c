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
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int flags; } ;
struct xfrm_state {int /*<<< orphan*/  lock; TYPE_4__ curlft; TYPE_3__* type; TYPE_2__ km; TYPE_1__ props; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  mark; int /*<<< orphan*/  dev; } ;
struct sec_path {scalar_t__ len; struct xfrm_state** xvec; } ;
struct net {int dummy; } ;
struct TYPE_7__ {scalar_t__ (* input ) (struct xfrm_state*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINBUFFERERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINNOSTATES ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ XFRM_MAX_DEPTH ; 
 scalar_t__ XFRM_STATE_VALID ; 
 int XFRM_STATE_WILDRECV ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_any ; 
 scalar_t__ FUNC2 (int) ; 
 struct sec_path* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct xfrm_state*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC9 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_state*) ; 

int FUNC11(struct sk_buff *skb, xfrm_address_t *daddr,
		     xfrm_address_t *saddr, u8 proto)
{
	struct net *net = FUNC1(skb->dev);
	struct xfrm_state *x = NULL;
	struct sec_path *sp;
	int i = 0;

	sp = FUNC3(skb);
	if (!sp) {
		FUNC0(net, LINUX_MIB_XFRMINERROR);
		goto drop;
	}

	if (1 + sp->len == XFRM_MAX_DEPTH) {
		FUNC0(net, LINUX_MIB_XFRMINBUFFERERROR);
		goto drop;
	}

	for (i = 0; i < 3; i++) {
		xfrm_address_t *dst, *src;

		switch (i) {
		case 0:
			dst = daddr;
			src = saddr;
			break;
		case 1:
			/* lookup state with wild-card source address */
			dst = daddr;
			src = (xfrm_address_t *)&in6addr_any;
			break;
		default:
			/* lookup state with wild-card addresses */
			dst = (xfrm_address_t *)&in6addr_any;
			src = (xfrm_address_t *)&in6addr_any;
			break;
		}

		x = FUNC9(net, skb->mark, dst, src, proto, AF_INET6);
		if (!x)
			continue;

		FUNC4(&x->lock);

		if ((!i || (x->props.flags & XFRM_STATE_WILDRECV)) &&
		    FUNC2(x->km.state == XFRM_STATE_VALID) &&
		    !FUNC8(x)) {
			FUNC5(&x->lock);
			if (x->type->input(x, skb) > 0) {
				/* found a valid state */
				break;
			}
		} else
			FUNC5(&x->lock);

		FUNC10(x);
		x = NULL;
	}

	if (!x) {
		FUNC0(net, LINUX_MIB_XFRMINNOSTATES);
		FUNC7(skb, AF_INET6);
		goto drop;
	}

	sp->xvec[sp->len++] = x;

	FUNC4(&x->lock);

	x->curlft.bytes += skb->len;
	x->curlft.packets++;

	FUNC5(&x->lock);

	return 1;

drop:
	return -1;
}