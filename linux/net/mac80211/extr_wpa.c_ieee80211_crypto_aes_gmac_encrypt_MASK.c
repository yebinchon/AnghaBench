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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_tx_data {int /*<<< orphan*/  skbs; struct ieee80211_key* key; } ;
struct ieee80211_mmie_16 {int length; int /*<<< orphan*/  mic; int /*<<< orphan*/  sequence_number; int /*<<< orphan*/  key_id; int /*<<< orphan*/  element_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  tfm; } ;
struct TYPE_8__ {TYPE_3__ aes_gmac; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_pn; int /*<<< orphan*/  keyidx; } ;
struct ieee80211_key {TYPE_4__ u; TYPE_2__ conf; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; } ;
typedef  int /*<<< orphan*/  ieee80211_tx_result ;

/* Variables and functions */
 int ETH_ALEN ; 
 int GMAC_AAD_LEN ; 
 int GMAC_NONCE_LEN ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  TX_CONTINUE ; 
 int /*<<< orphan*/  TX_DROP ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  WLAN_EID_MMIE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 struct ieee80211_mmie_16* FUNC10 (struct sk_buff*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct sk_buff*) ; 

ieee80211_tx_result
FUNC13(struct ieee80211_tx_data *tx)
{
	struct sk_buff *skb;
	struct ieee80211_tx_info *info;
	struct ieee80211_key *key = tx->key;
	struct ieee80211_mmie_16 *mmie;
	struct ieee80211_hdr *hdr;
	u8 aad[GMAC_AAD_LEN];
	u64 pn64;
	u8 nonce[GMAC_NONCE_LEN];

	if (FUNC1(FUNC11(&tx->skbs) != 1))
		return TX_DROP;

	skb = FUNC9(&tx->skbs);

	info = FUNC0(skb);

	if (info->control.hw_key)
		return TX_CONTINUE;

	if (FUNC1(FUNC12(skb) < sizeof(*mmie)))
		return TX_DROP;

	mmie = FUNC10(skb, sizeof(*mmie));
	mmie->element_id = WLAN_EID_MMIE;
	mmie->length = sizeof(*mmie) - 2;
	mmie->key_id = FUNC6(key->conf.keyidx);

	/* PN = PN + 1 */
	pn64 = FUNC2(&key->conf.tx_pn);

	FUNC4(mmie->sequence_number, pn64);

	FUNC3(skb, aad);

	hdr = (struct ieee80211_hdr *)skb->data;
	FUNC8(nonce, hdr->addr2, ETH_ALEN);
	FUNC5(nonce + ETH_ALEN, mmie->sequence_number);

	/* MIC = AES-GMAC(IGTK, AAD || Management Frame Body || MMIE, 128) */
	if (FUNC7(key->u.aes_gmac.tfm, aad, nonce,
			       skb->data + 24, skb->len - 24, mmie->mic) < 0)
		return TX_DROP;

	return TX_CONTINUE;
}