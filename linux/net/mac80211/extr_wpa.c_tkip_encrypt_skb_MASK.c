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
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__* hw_key; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_tx_data {TYPE_3__* local; struct ieee80211_key* key; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_pn; } ;
struct ieee80211_key {TYPE_4__ conf; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_7__ {int /*<<< orphan*/  wep_tx_ctx; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int IEEE80211_KEY_FLAG_GENERATE_IV ; 
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TKIP_ICV_LEN ; 
 scalar_t__ IEEE80211_TKIP_IV_LEN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct ieee80211_key*,struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_tx_data *tx, struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
	struct ieee80211_key *key = tx->key;
	struct ieee80211_tx_info *info = FUNC0(skb);
	unsigned int hdrlen;
	int len, tail;
	u64 pn;
	u8 *pos;

	if (info->control.hw_key &&
	    !(info->control.hw_key->flags & IEEE80211_KEY_FLAG_GENERATE_IV) &&
	    !(info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE)) {
		/* hwaccel - with no need for software-generated IV */
		return 0;
	}

	hdrlen = FUNC3(hdr->frame_control);
	len = skb->len - hdrlen;

	if (info->control.hw_key)
		tail = 0;
	else
		tail = IEEE80211_TKIP_ICV_LEN;

	if (FUNC1(FUNC10(skb) < tail ||
		    FUNC7(skb) < IEEE80211_TKIP_IV_LEN))
		return -1;

	pos = FUNC8(skb, IEEE80211_TKIP_IV_LEN);
	FUNC6(pos, pos + IEEE80211_TKIP_IV_LEN, hdrlen);
	pos += hdrlen;

	/* the HW only needs room for the IV, but not the actual IV */
	if (info->control.hw_key &&
	    (info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE))
		return 0;

	/* Increase IV for the frame */
	pn = FUNC2(&key->conf.tx_pn);
	pos = FUNC4(pos, &key->conf, pn);

	/* hwaccel - with software IV */
	if (info->control.hw_key)
		return 0;

	/* Add room for ICV */
	FUNC9(skb, IEEE80211_TKIP_ICV_LEN);

	return FUNC5(&tx->local->wep_tx_ctx,
					   key, skb, pos, len);
}