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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int data; int len; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {int security_idx; int /*<<< orphan*/  sta; struct sk_buff* skb; struct ieee80211_key* key; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rx_pn; int /*<<< orphan*/  tfm; int /*<<< orphan*/  replays; } ;
struct TYPE_4__ {TYPE_1__ ccmp; } ;
struct ieee80211_key {TYPE_2__ u; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  ieee80211_rx_result ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int IEEE80211_CCMP_HDR_LEN ; 
 int IEEE80211_CCMP_PN_LEN ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RX_CONTINUE ; 
 int /*<<< orphan*/  RX_DROP_UNUSABLE ; 
 int RX_FLAG_ALLOW_SAME_PN ; 
 int RX_FLAG_DECRYPTED ; 
 int RX_FLAG_MIC_STRIPPED ; 
 int RX_FLAG_PN_VALIDATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 

ieee80211_rx_result
FUNC14(struct ieee80211_rx_data *rx,
			      unsigned int mic_len)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)rx->skb->data;
	int hdrlen;
	struct ieee80211_key *key = rx->key;
	struct sk_buff *skb = rx->skb;
	struct ieee80211_rx_status *status = FUNC0(skb);
	u8 pn[IEEE80211_CCMP_PN_LEN];
	int data_len;
	int queue;

	hdrlen = FUNC4(hdr->frame_control);

	if (!FUNC5(hdr->frame_control) &&
	    !FUNC6(skb))
		return RX_CONTINUE;

	if (status->flag & RX_FLAG_DECRYPTED) {
		if (!FUNC10(rx->skb, hdrlen + IEEE80211_CCMP_HDR_LEN))
			return RX_DROP_UNUSABLE;
		if (status->flag & RX_FLAG_MIC_STRIPPED)
			mic_len = 0;
	} else {
		if (FUNC12(rx->skb))
			return RX_DROP_UNUSABLE;
	}

	data_len = skb->len - hdrlen - IEEE80211_CCMP_HDR_LEN - mic_len;
	if (!rx->sta || data_len < 0)
		return RX_DROP_UNUSABLE;

	if (!(status->flag & RX_FLAG_PN_VALIDATED)) {
		int res;

		FUNC1(pn, skb->data + hdrlen);

		queue = rx->security_idx;

		res = FUNC7(pn, key->u.ccmp.rx_pn[queue],
			     IEEE80211_CCMP_PN_LEN);
		if (res < 0 ||
		    (!res && !(status->flag & RX_FLAG_ALLOW_SAME_PN))) {
			key->u.ccmp.replays++;
			return RX_DROP_UNUSABLE;
		}

		if (!(status->flag & RX_FLAG_DECRYPTED)) {
			u8 aad[2 * AES_BLOCK_SIZE];
			u8 b_0[AES_BLOCK_SIZE];
			/* hardware didn't decrypt/verify MIC */
			FUNC2(skb, pn, b_0, aad);

			if (FUNC3(
				    key->u.ccmp.tfm, b_0, aad,
				    skb->data + hdrlen + IEEE80211_CCMP_HDR_LEN,
				    data_len,
				    skb->data + skb->len - mic_len))
				return RX_DROP_UNUSABLE;
		}

		FUNC8(key->u.ccmp.rx_pn[queue], pn, IEEE80211_CCMP_PN_LEN);
	}

	/* Remove CCMP header and MIC */
	if (FUNC11(skb, skb->len - mic_len))
		return RX_DROP_UNUSABLE;
	FUNC9(skb->data + IEEE80211_CCMP_HDR_LEN, skb->data, hdrlen);
	FUNC13(skb, IEEE80211_CCMP_HDR_LEN);

	return RX_CONTINUE;
}