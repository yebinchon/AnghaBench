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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {int /*<<< orphan*/ * hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct ieee80211_tx_data {TYPE_4__* key; TYPE_1__* local; struct sk_buff* skb; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  ieee80211_tx_result ;
struct TYPE_7__ {scalar_t__ cipher; int flags; int /*<<< orphan*/ * key; } ;
struct TYPE_8__ {TYPE_3__ conf; } ;
struct TYPE_5__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ; 
 int IEEE80211_KEY_FLAG_PUT_MIC_SPACE ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ IEEE80211_TKIP_ICV_LEN ; 
 scalar_t__ IEEE80211_TKIP_IV_LEN ; 
 int IEEE80211_TX_CTL_DONTFRAG ; 
 int IEEE80211_TX_INTFL_TKIP_MIC_FAILURE ; 
 int MICHAEL_MIC_LEN ; 
 size_t NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY ; 
 int /*<<< orphan*/  SUPPORTS_TX_FRAG ; 
 int /*<<< orphan*/  TX_CONTINUE ; 
 int /*<<< orphan*/  TX_DROP ; 
 scalar_t__ FUNC1 (int,char*,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ieee80211_hdr*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC8 (struct sk_buff*,int) ; 
 int FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

ieee80211_tx_result
FUNC11(struct ieee80211_tx_data *tx)
{
	u8 *data, *key, *mic;
	size_t data_len;
	unsigned int hdrlen;
	struct ieee80211_hdr *hdr;
	struct sk_buff *skb = tx->skb;
	struct ieee80211_tx_info *info = FUNC0(skb);
	int tail;

	hdr = (struct ieee80211_hdr *)skb->data;
	if (!tx->key || tx->key->conf.cipher != WLAN_CIPHER_SUITE_TKIP ||
	    skb->len < 24 || !FUNC4(hdr->frame_control))
		return TX_CONTINUE;

	hdrlen = FUNC2(hdr->frame_control);
	if (skb->len < hdrlen)
		return TX_DROP;

	data = skb->data + hdrlen;
	data_len = skb->len - hdrlen;

	if (FUNC10(info->flags & IEEE80211_TX_INTFL_TKIP_MIC_FAILURE)) {
		/* Need to use software crypto for the test */
		info->control.hw_key = NULL;
	}

	if (info->control.hw_key &&
	    (info->flags & IEEE80211_TX_CTL_DONTFRAG ||
	     FUNC3(&tx->local->hw, SUPPORTS_TX_FRAG)) &&
	    !(tx->key->conf.flags & (IEEE80211_KEY_FLAG_GENERATE_MMIC |
				     IEEE80211_KEY_FLAG_PUT_MIC_SPACE))) {
		/* hwaccel - with no need for SW-generated MMIC or MIC space */
		return TX_CONTINUE;
	}

	tail = MICHAEL_MIC_LEN;
	if (!info->control.hw_key)
		tail += IEEE80211_TKIP_ICV_LEN;

	if (FUNC1(FUNC9(skb) < tail ||
		 FUNC7(skb) < IEEE80211_TKIP_IV_LEN,
		 "mmic: not enough head/tail (%d/%d,%d/%d)\n",
		 FUNC7(skb), IEEE80211_TKIP_IV_LEN,
		 FUNC9(skb), tail))
		return TX_DROP;

	mic = FUNC8(skb, MICHAEL_MIC_LEN);

	if (tx->key->conf.flags & IEEE80211_KEY_FLAG_PUT_MIC_SPACE) {
		/* Zeroed MIC can help with debug */
		FUNC5(mic, 0, MICHAEL_MIC_LEN);
		return TX_CONTINUE;
	}

	key = &tx->key->conf.key[NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY];
	FUNC6(key, hdr, data, data_len, mic);
	if (FUNC10(info->flags & IEEE80211_TX_INTFL_TKIP_MIC_FAILURE))
		mic[0]++;

	return TX_CONTINUE;
}