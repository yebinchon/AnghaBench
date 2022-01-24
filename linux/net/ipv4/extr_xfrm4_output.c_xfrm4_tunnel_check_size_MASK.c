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
struct sk_buff {int len; int protocol; scalar_t__ sk; scalar_t__ ignore_df; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int frag_off; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int IPSKB_XFRM_TUNNEL_SIZE ; 
 int /*<<< orphan*/  IP_DF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb)
{
	int mtu, ret = 0;

	if (FUNC0(skb)->flags & IPSKB_XFRM_TUNNEL_SIZE)
		goto out;

	if (!(FUNC5(skb)->frag_off & FUNC3(IP_DF)) || skb->ignore_df)
		goto out;

	mtu = FUNC1(FUNC7(skb));
	if ((!FUNC9(skb) && skb->len > mtu) ||
	    (FUNC9(skb) &&
	     !FUNC8(skb, FUNC6(skb->sk, skb)))) {
		skb->protocol = FUNC3(ETH_P_IP);

		if (skb->sk)
			FUNC10(skb, mtu);
		else
			FUNC4(skb, ICMP_DEST_UNREACH,
				  ICMP_FRAG_NEEDED, FUNC2(mtu));
		ret = -EMSGSIZE;
	}
out:
	return ret;
}