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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {struct sk_buff* skb; int /*<<< orphan*/  key; int /*<<< orphan*/  local; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  ieee80211_rx_result ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 scalar_t__ IEEE80211_WEP_ICV_LEN ; 
 scalar_t__ IEEE80211_WEP_IV_LEN ; 
 int /*<<< orphan*/  RX_CONTINUE ; 
 int /*<<< orphan*/  RX_DROP_UNUSABLE ; 
 int RX_FLAG_DECRYPTED ; 
 int RX_FLAG_ICV_STRIPPED ; 
 int RX_FLAG_IV_STRIPPED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 

ieee80211_rx_result
FUNC9(struct ieee80211_rx_data *rx)
{
	struct sk_buff *skb = rx->skb;
	struct ieee80211_rx_status *status = FUNC0(skb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	__le16 fc = hdr->frame_control;

	if (!FUNC3(fc) && !FUNC2(fc))
		return RX_CONTINUE;

	if (!(status->flag & RX_FLAG_DECRYPTED)) {
		if (FUNC8(rx->skb))
			return RX_DROP_UNUSABLE;
		if (FUNC4(rx->local, rx->skb, rx->key))
			return RX_DROP_UNUSABLE;
	} else if (!(status->flag & RX_FLAG_IV_STRIPPED)) {
		if (!FUNC6(rx->skb, FUNC1(fc) +
					    IEEE80211_WEP_IV_LEN))
			return RX_DROP_UNUSABLE;
		FUNC5(rx->local, rx->skb, rx->key);
		/* remove ICV */
		if (!(status->flag & RX_FLAG_ICV_STRIPPED) &&
		    FUNC7(rx->skb, rx->skb->len - IEEE80211_WEP_ICV_LEN))
			return RX_DROP_UNUSABLE;
	}

	return RX_CONTINUE;
}