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
struct TYPE_3__ {int encap; } ;
struct xfrm_state {TYPE_1__ outer_mode; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSKB_XFRM_TUNNEL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  XFRM_MODE_BEET 129 
#define  XFRM_MODE_TUNNEL 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC4 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC5 (struct xfrm_state*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x, struct sk_buff *skb)
{
	int err;

	err = FUNC5(x, skb);
	if (err)
		return err;

	FUNC0(skb)->flags |= IPSKB_XFRM_TUNNEL_SIZE;
	skb->protocol = FUNC2(ETH_P_IP);

	switch (x->outer_mode.encap) {
	case XFRM_MODE_BEET:
		return FUNC3(x, skb);
	case XFRM_MODE_TUNNEL:
		return FUNC4(x, skb);
	}

	FUNC1(1);
	return -EOPNOTSUPP;
}