#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct sk_buff {scalar_t__ protocol; int len; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int version; int /*<<< orphan*/  tot_len; } ;
struct inet_skb_parm {int dummy; } ;
typedef  int /*<<< orphan*/  iph ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net*,struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int,struct iphdr*,int) ; 
 int FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC13(struct net *net, struct sk_buff *skb, u32 user)
{
	struct iphdr iph;
	int netoff;
	u32 len;

	if (skb->protocol != FUNC1(ETH_P_IP))
		return skb;

	netoff = FUNC11(skb);

	if (FUNC10(skb, netoff, &iph, sizeof(iph)) < 0)
		return skb;

	if (iph.ihl < 5 || iph.version != 4)
		return skb;

	len = FUNC6(iph.tot_len);
	if (skb->len < netoff + len || len < (iph.ihl * 4))
		return skb;

	if (FUNC3(&iph)) {
		skb = FUNC12(skb, GFP_ATOMIC);
		if (skb) {
			if (!FUNC7(skb, netoff + iph.ihl * 4)) {
				FUNC4(skb);
				return NULL;
			}
			if (FUNC8(skb, netoff + len)) {
				FUNC4(skb);
				return NULL;
			}
			FUNC5(FUNC0(skb), 0, sizeof(struct inet_skb_parm));
			if (FUNC2(net, skb, user))
				return NULL;
			FUNC9(skb);
		}
	}
	return skb;
}