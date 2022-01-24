#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_8__ {TYPE_2__* hw_key; } ;
struct ieee80211_tx_info {TYPE_3__ control; } ;
struct ieee80211_tx_data {struct ieee80211_key* key; } ;
struct TYPE_9__ {int /*<<< orphan*/  tfm; } ;
struct TYPE_10__ {TYPE_4__ gcmp; } ;
struct TYPE_6__ {int /*<<< orphan*/  keyidx; int /*<<< orphan*/  tx_pn; } ;
struct ieee80211_key {TYPE_5__ u; TYPE_1__ conf; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int GCM_AAD_LEN ; 
 scalar_t__ IEEE80211_GCMP_HDR_LEN ; 
 int IEEE80211_GCMP_MIC_LEN ; 
 int IEEE80211_KEY_FLAG_GENERATE_IV ; 
 int IEEE80211_KEY_FLAG_GENERATE_IV_MGMT ; 
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int*,int*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int*,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int* FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__) ; 
 int FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC15(struct ieee80211_tx_data *tx, struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct ieee80211_key *key = tx->key;
	struct ieee80211_tx_info *info = FUNC0(skb);
	int hdrlen, len, tail;
	u8 *pos;
	u8 pn[6];
	u64 pn64;
	u8 aad[GCM_AAD_LEN];
	u8 j_0[AES_BLOCK_SIZE];

	if (info->control.hw_key &&
	    !(info->control.hw_key->flags & IEEE80211_KEY_FLAG_GENERATE_IV) &&
	    !(info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE) &&
	    !((info->control.hw_key->flags &
	       IEEE80211_KEY_FLAG_GENERATE_IV_MGMT) &&
	      FUNC7(hdr->frame_control))) {
		/* hwaccel has no need for preallocated room for GCMP
		 * header or MIC fields
		 */
		return 0;
	}

	hdrlen = FUNC6(hdr->frame_control);
	len = skb->len - hdrlen;

	if (info->control.hw_key)
		tail = 0;
	else
		tail = IEEE80211_GCMP_MIC_LEN;

	if (FUNC1(FUNC14(skb) < tail ||
		    FUNC9(skb) < IEEE80211_GCMP_HDR_LEN))
		return -1;

	pos = FUNC11(skb, IEEE80211_GCMP_HDR_LEN);
	FUNC8(pos, pos + IEEE80211_GCMP_HDR_LEN, hdrlen);
	FUNC13(skb, FUNC10(skb) +
				    IEEE80211_GCMP_HDR_LEN);

	/* the HW only needs room for the IV, but not the actual IV */
	if (info->control.hw_key &&
	    (info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE))
		return 0;

	hdr = (struct ieee80211_hdr *)pos;
	pos += hdrlen;

	pn64 = FUNC2(&key->conf.tx_pn);

	pn[5] = pn64;
	pn[4] = pn64 >> 8;
	pn[3] = pn64 >> 16;
	pn[2] = pn64 >> 24;
	pn[1] = pn64 >> 32;
	pn[0] = pn64 >> 40;

	FUNC3(pos, pn, key->conf.keyidx);

	/* hwaccel - with software GCMP header */
	if (info->control.hw_key)
		return 0;

	pos += IEEE80211_GCMP_HDR_LEN;
	FUNC4(skb, pn, j_0, aad);
	return FUNC5(key->u.gcmp.tfm, j_0, aad, pos, len,
					 FUNC12(skb, IEEE80211_GCMP_MIC_LEN));
}