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
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  ip_summed; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct sk_buff*,struct ieee80211_rate*,int,int) ; 
 int FUNC4 (struct ieee80211_local*,struct ieee80211_rx_status*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *
FUNC9(struct ieee80211_local *local,
			   struct sk_buff **origskb,
			   struct ieee80211_rate *rate,
			   int rtap_space, bool use_origskb)
{
	struct ieee80211_rx_status *status = FUNC0(*origskb);
	int rt_hdrlen, needed_headroom;
	struct sk_buff *skb;

	/* room for the radiotap header based on driver features */
	rt_hdrlen = FUNC4(local, status, *origskb);
	needed_headroom = rt_hdrlen - rtap_space;

	if (use_origskb) {
		/* only need to expand headroom if necessary */
		skb = *origskb;
		*origskb = NULL;

		/*
		 * This shouldn't trigger often because most devices have an
		 * RX header they pull before we get here, and that should
		 * be big enough for our radiotap information. We should
		 * probably export the length to drivers so that we can have
		 * them allocate enough headroom to start with.
		 */
		if (FUNC7(skb) < needed_headroom &&
		    FUNC5(skb, needed_headroom, 0, GFP_ATOMIC)) {
			FUNC1(skb);
			return NULL;
		}
	} else {
		/*
		 * Need to make a copy and possibly remove radiotap header
		 * and FCS from the original.
		 */
		skb = FUNC6(*origskb, needed_headroom, 0, GFP_ATOMIC);

		if (!skb)
			return NULL;
	}

	/* prepend radiotap information */
	FUNC3(local, skb, rate, rt_hdrlen, true);

	FUNC8(skb);
	skb->ip_summed = CHECKSUM_UNNECESSARY;
	skb->pkt_type = PACKET_OTHERHOST;
	skb->protocol = FUNC2(ETH_P_802_2);

	return skb;
}