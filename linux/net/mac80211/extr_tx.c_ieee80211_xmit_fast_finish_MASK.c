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
typedef  size_t u8 ;
typedef  int u64 ;
struct TYPE_8__ {int /*<<< orphan*/ * packets; int /*<<< orphan*/ * bytes; scalar_t__* msdu; } ;
struct sta_info {TYPE_3__ tx_stats; } ;
struct sk_buff {size_t* data; size_t priority; scalar_t__ len; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_4__* hw_key; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  hw_queue; int /*<<< orphan*/  flags; TYPE_1__ control; } ;
struct TYPE_7__ {int /*<<< orphan*/ * hw_queue; } ;
struct ieee80211_sub_if_data {int sequence_number; TYPE_2__ vif; } ;
struct TYPE_9__ {int cipher; int keyidx; int /*<<< orphan*/  tx_pn; } ;
struct ieee80211_key {TYPE_4__ conf; } ;
struct ieee80211_hdr {int frame_control; int seq_ctrl; } ;
struct TYPE_10__ {scalar_t__ gso_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 size_t IEEE80211_NUM_TIDS ; 
 size_t IEEE80211_QOS_CTL_TAG1D_MASK ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_STYPE_QOS_DATA ; 
 int /*<<< orphan*/  IEEE80211_TX_CTL_ASSIGN_SEQ ; 
#define  WLAN_CIPHER_SUITE_CCMP 131 
#define  WLAN_CIPHER_SUITE_CCMP_256 130 
#define  WLAN_CIPHER_SUITE_GCMP 129 
#define  WLAN_CIPHER_SUITE_GCMP_256 128 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct sta_info*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 size_t FUNC6 (struct sk_buff*) ; 
 TYPE_5__* FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_sub_if_data *sdata,
				       struct sta_info *sta, u8 pn_offs,
				       struct ieee80211_key *key,
				       struct sk_buff *skb)
{
	struct ieee80211_tx_info *info = FUNC1(skb);
	struct ieee80211_hdr *hdr = (void *)skb->data;
	u8 tid = IEEE80211_NUM_TIDS;

	if (key)
		info->control.hw_key = &key->conf;

	FUNC5(skb->dev, skb->len);

	if (hdr->frame_control & FUNC3(IEEE80211_STYPE_QOS_DATA)) {
		tid = skb->priority & IEEE80211_QOS_CTL_TAG1D_MASK;
		hdr->seq_ctrl = FUNC4(sta, tid);
	} else {
		info->flags |= IEEE80211_TX_CTL_ASSIGN_SEQ;
		hdr->seq_ctrl = FUNC3(sdata->sequence_number);
		sdata->sequence_number += 0x10;
	}

	if (FUNC7(skb)->gso_size)
		sta->tx_stats.msdu[tid] +=
			FUNC0(skb->len, FUNC7(skb)->gso_size);
	else
		sta->tx_stats.msdu[tid]++;

	info->hw_queue = sdata->vif.hw_queue[FUNC6(skb)];

	/* statistics normally done by ieee80211_tx_h_stats (but that
	 * has to consider fragmentation, so is more complex)
	 */
	sta->tx_stats.bytes[FUNC6(skb)] += skb->len;
	sta->tx_stats.packets[FUNC6(skb)]++;

	if (pn_offs) {
		u64 pn;
		u8 *crypto_hdr = skb->data + pn_offs;

		switch (key->conf.cipher) {
		case WLAN_CIPHER_SUITE_CCMP:
		case WLAN_CIPHER_SUITE_CCMP_256:
		case WLAN_CIPHER_SUITE_GCMP:
		case WLAN_CIPHER_SUITE_GCMP_256:
			pn = FUNC2(&key->conf.tx_pn);
			crypto_hdr[0] = pn;
			crypto_hdr[1] = pn >> 8;
			crypto_hdr[3] = 0x20 | (key->conf.keyidx << 6);
			crypto_hdr[4] = pn >> 16;
			crypto_hdr[5] = pn >> 24;
			crypto_hdr[6] = pn >> 32;
			crypto_hdr[7] = pn >> 40;
			break;
		}
	}
}