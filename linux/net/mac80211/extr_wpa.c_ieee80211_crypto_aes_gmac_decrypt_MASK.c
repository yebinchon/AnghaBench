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
struct ieee80211_rx_data {struct ieee80211_key* key; struct sk_buff* skb; } ;
struct ieee80211_mmie_16 {scalar_t__ element_id; int length; int /*<<< orphan*/  mic; int /*<<< orphan*/  sequence_number; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rx_pn; int /*<<< orphan*/  icverrors; int /*<<< orphan*/  tfm; int /*<<< orphan*/  replays; } ;
struct TYPE_4__ {TYPE_1__ aes_gmac; } ;
struct ieee80211_key {TYPE_2__ u; } ;
struct ieee80211_hdr {int /*<<< orphan*/ * addr2; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  ieee80211_rx_result ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int GMAC_AAD_LEN ; 
 int /*<<< orphan*/  GMAC_MIC_LEN ; 
 int GMAC_NONCE_LEN ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RX_CONTINUE ; 
 int /*<<< orphan*/  RX_DROP_UNUSABLE ; 
 int RX_FLAG_DECRYPTED ; 
 scalar_t__ WLAN_EID_MMIE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

ieee80211_rx_result
FUNC11(struct ieee80211_rx_data *rx)
{
	struct sk_buff *skb = rx->skb;
	struct ieee80211_rx_status *status = FUNC0(skb);
	struct ieee80211_key *key = rx->key;
	struct ieee80211_mmie_16 *mmie;
	u8 aad[GMAC_AAD_LEN], *mic, ipn[6], nonce[GMAC_NONCE_LEN];
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;

	if (!FUNC5(hdr->frame_control))
		return RX_CONTINUE;

	/* management frames are already linear */

	if (skb->len < 24 + sizeof(*mmie))
		return RX_DROP_UNUSABLE;

	mmie = (struct ieee80211_mmie_16 *)
		(skb->data + skb->len - sizeof(*mmie));
	if (mmie->element_id != WLAN_EID_MMIE ||
	    mmie->length != sizeof(*mmie) - 2)
		return RX_DROP_UNUSABLE; /* Invalid MMIE */

	FUNC2(ipn, mmie->sequence_number);

	if (FUNC8(ipn, key->u.aes_gmac.rx_pn, 6) <= 0) {
		key->u.aes_gmac.replays++;
		return RX_DROP_UNUSABLE;
	}

	if (!(status->flag & RX_FLAG_DECRYPTED)) {
		/* hardware didn't decrypt/verify MIC */
		FUNC1(skb, aad);

		FUNC9(nonce, hdr->addr2, ETH_ALEN);
		FUNC9(nonce + ETH_ALEN, ipn, 6);

		mic = FUNC7(GMAC_MIC_LEN, GFP_ATOMIC);
		if (!mic)
			return RX_DROP_UNUSABLE;
		if (FUNC4(key->u.aes_gmac.tfm, aad, nonce,
				       skb->data + 24, skb->len - 24,
				       mic) < 0 ||
		    FUNC3(mic, mmie->mic, sizeof(mmie->mic))) {
			key->u.aes_gmac.icverrors++;
			FUNC6(mic);
			return RX_DROP_UNUSABLE;
		}
		FUNC6(mic);
	}

	FUNC9(key->u.aes_gmac.rx_pn, ipn, 6);

	/* Remove MMIE */
	FUNC10(skb, skb->len - sizeof(*mmie));

	return RX_CONTINUE;
}