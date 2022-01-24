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
struct xfrm_state_afinfo {int (* extract_input ) (struct xfrm_state*,struct sk_buff*) ;} ;
struct TYPE_5__ {scalar_t__ family; } ;
struct TYPE_4__ {int /*<<< orphan*/  family; } ;
struct xfrm_mode {int family; } ;
struct xfrm_state {TYPE_2__ sel; TYPE_1__ outer_mode; struct xfrm_mode inner_mode; } ;
struct sk_buff {void* protocol; } ;
struct TYPE_6__ {int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 scalar_t__ AF_UNSPEC ; 
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct xfrm_state_afinfo const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC7 (struct xfrm_state*,struct xfrm_mode const*,struct sk_buff*) ; 
 struct xfrm_mode* FUNC8 (struct xfrm_state*,int /*<<< orphan*/ ) ; 
 struct xfrm_state_afinfo* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct xfrm_state *x, struct sk_buff *skb)
{
	const struct xfrm_mode *inner_mode = &x->inner_mode;
	const struct xfrm_state_afinfo *afinfo;
	int err = -EAFNOSUPPORT;

	FUNC4();
	afinfo = FUNC9(x->outer_mode.family);
	if (FUNC3(afinfo))
		err = afinfo->extract_input(x, skb);
	FUNC5();

	if (err)
		return err;

	if (x->sel.family == AF_UNSPEC) {
		inner_mode = FUNC8(x, FUNC1(skb)->protocol);
		if (!inner_mode)
			return -EAFNOSUPPORT;
	}

	switch (inner_mode->family) {
	case AF_INET:
		skb->protocol = FUNC2(ETH_P_IP);
		break;
	case AF_INET6:
		skb->protocol = FUNC2(ETH_P_IPV6);
		break;
	default:
		FUNC0(1);
		break;
	}

	return FUNC7(x, inner_mode, skb);
}