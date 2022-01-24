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
struct TYPE_4__ {int flags; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ mac_len; } ;
struct iphdr {int dummy; } ;
struct TYPE_6__ {scalar_t__ protocol; int /*<<< orphan*/  tos; } ;
struct TYPE_5__ {int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPPROTO_IPIP ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int XFRM_STATE_DECAP_DSCP ; 
 int XFRM_STATE_NOECN ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct xfrm_state *x, struct sk_buff *skb)
{
	int err = -EINVAL;

	if (FUNC0(skb)->protocol != IPPROTO_IPIP)
		goto out;

	if (!FUNC5(skb, sizeof(struct iphdr)))
		goto out;

	err = FUNC8(skb, GFP_ATOMIC);
	if (err)
		goto out;

	if (x->props.flags & XFRM_STATE_DECAP_DSCP)
		FUNC4(FUNC0(skb)->tos, FUNC3(skb));
	if (!(x->props.flags & XFRM_STATE_NOECN))
		FUNC2(skb);

	FUNC7(skb);
	FUNC6(skb);
	if (skb->mac_len)
		FUNC1(skb)->h_proto = skb->protocol;

	err = 0;

out:
	return err;
}