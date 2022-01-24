#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int network_header; int mac_header; unsigned int mac_len; scalar_t__ protocol; struct sk_buff* next; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;
typedef  scalar_t__ __be16 ;
struct TYPE_3__ {int /*<<< orphan*/  np; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_NSH ; 
 int /*<<< orphan*/  ETH_P_TEB ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  NETIF_F_SG ; 
 unsigned int NSH_BASE_HDR_LEN ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 unsigned int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__,unsigned int,int,unsigned int) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC15(struct sk_buff *skb,
				       netdev_features_t features)
{
	struct sk_buff *segs = FUNC0(-EINVAL);
	unsigned int nsh_len, mac_len;
	__be16 proto;
	int nhoff;

	FUNC11(skb);

	nhoff = skb->network_header - skb->mac_header;
	mac_len = skb->mac_len;

	if (FUNC14(!FUNC7(skb, NSH_BASE_HDR_LEN)))
		goto out;
	nsh_len = FUNC6(FUNC5(skb));
	if (nsh_len < NSH_BASE_HDR_LEN)
		goto out;
	if (FUNC14(!FUNC7(skb, nsh_len)))
		goto out;

	proto = FUNC13(FUNC5(skb)->np);
	if (!proto)
		goto out;

	FUNC2(skb, nsh_len);

	FUNC10(skb);
	skb->mac_len = proto == FUNC4(ETH_P_TEB) ? ETH_HLEN : 0;
	skb->protocol = proto;

	features &= NETIF_F_SG;
	segs = FUNC9(skb, features);
	if (FUNC1(segs)) {
		FUNC8(skb, FUNC4(ETH_P_NSH), nsh_len,
				     skb->network_header - nhoff,
				     mac_len);
		goto out;
	}

	for (skb = segs; skb; skb = skb->next) {
		skb->protocol = FUNC4(ETH_P_NSH);
		FUNC3(skb, nsh_len);
		FUNC12(skb, -nhoff);
		skb->network_header = skb->mac_header + mac_len;
		skb->mac_len = mac_len;
	}

out:
	return segs;
}