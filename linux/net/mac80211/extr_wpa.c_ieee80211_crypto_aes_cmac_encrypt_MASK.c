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
struct TYPE_6__ {scalar_t__ hw_key; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_tx_data {int /*<<< orphan*/  skbs; struct ieee80211_key* key; } ;
struct ieee80211_mmie {int length; int /*<<< orphan*/  mic; int /*<<< orphan*/  sequence_number; int /*<<< orphan*/  key_id; int /*<<< orphan*/  element_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  tfm; } ;
struct TYPE_8__ {TYPE_3__ aes_cmac; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  tx_pn; int /*<<< orphan*/  keyidx; } ;
struct ieee80211_key {TYPE_4__ u; TYPE_1__ conf; } ;
typedef  int /*<<< orphan*/  ieee80211_tx_result ;

/* Variables and functions */
 int IEEE80211_KEY_FLAG_GENERATE_MMIE ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  TX_CONTINUE ; 
 int /*<<< orphan*/  TX_DROP ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  WLAN_EID_MMIE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 struct ieee80211_mmie* FUNC8 (struct sk_buff*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sk_buff*) ; 

ieee80211_tx_result
FUNC11(struct ieee80211_tx_data *tx)
{
	struct sk_buff *skb;
	struct ieee80211_tx_info *info;
	struct ieee80211_key *key = tx->key;
	struct ieee80211_mmie *mmie;
	u8 aad[20];
	u64 pn64;

	if (FUNC1(FUNC9(&tx->skbs) != 1))
		return TX_DROP;

	skb = FUNC7(&tx->skbs);

	info = FUNC0(skb);

	if (info->control.hw_key &&
	    !(key->conf.flags & IEEE80211_KEY_FLAG_GENERATE_MMIE))
		return TX_CONTINUE;

	if (FUNC1(FUNC10(skb) < sizeof(*mmie)))
		return TX_DROP;

	mmie = FUNC8(skb, sizeof(*mmie));
	mmie->element_id = WLAN_EID_MMIE;
	mmie->length = sizeof(*mmie) - 2;
	mmie->key_id = FUNC5(key->conf.keyidx);

	/* PN = PN + 1 */
	pn64 = FUNC2(&key->conf.tx_pn);

	FUNC4(mmie->sequence_number, pn64);

	if (info->control.hw_key)
		return TX_CONTINUE;

	FUNC3(skb, aad);

	/*
	 * MIC = AES-128-CMAC(IGTK, AAD || Management Frame Body || MMIE, 64)
	 */
	FUNC6(key->u.aes_cmac.tfm, aad,
			   skb->data + 24, skb->len - 24, mmie->mic);

	return TX_CONTINUE;
}