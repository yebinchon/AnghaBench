#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int wifi_acked_valid; int wifi_acked; scalar_t__ destructor; int /*<<< orphan*/ * dev; scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; scalar_t__ ack_frame_id; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_2__ {int /*<<< orphan*/ * frag_list; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_INTFL_MLME_CONN_TX ; 
 int IEEE80211_TX_STAT_ACK ; 
 scalar_t__ WLAN_TDLS_TEARDOWN ; 
 scalar_t__ FUNC1 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_local*,struct ieee80211_tx_info*,int,int) ; 
 struct ieee80211_sub_if_data* FUNC7 (struct ieee80211_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 TYPE_1__* FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC14(struct ieee80211_local *local,
				      struct sk_buff *skb, bool dropped)
{
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_hdr *hdr = (void *)skb->data;
	bool acked = info->flags & IEEE80211_TX_STAT_ACK;

	if (dropped)
		acked = false;

	if (info->flags & IEEE80211_TX_INTFL_MLME_CONN_TX) {
		struct ieee80211_sub_if_data *sdata;

		FUNC10();

		sdata = FUNC7(local, skb);

		if (!sdata) {
			skb->dev = NULL;
		} else {
			unsigned int hdr_size =
				FUNC2(hdr->frame_control);

			/* Check to see if packet is a TDLS teardown packet */
			if (FUNC3(hdr->frame_control) &&
			    (FUNC1(skb, hdr_size) ==
			     WLAN_TDLS_TEARDOWN))
				FUNC8(local, sdata, skb,
							    info->flags);
			else
				FUNC5(sdata,
							     hdr->frame_control,
							     acked);
		}

		FUNC11();
	} else if (info->ack_frame_id) {
		FUNC6(local, info, acked, dropped);
	}

	if (!dropped && skb->destructor) {
		skb->wifi_acked_valid = 1;
		skb->wifi_acked = acked;
	}

	FUNC4(local);

	if (FUNC12(skb)) {
		FUNC9(FUNC13(skb)->frag_list);
		FUNC13(skb)->frag_list = NULL;
	}
}