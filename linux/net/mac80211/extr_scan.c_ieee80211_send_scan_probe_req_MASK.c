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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; } ;
struct ieee80211_channel {int /*<<< orphan*/  band; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int IEEE80211_PROBE_FLAG_RANDOM_SN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IEEE80211_TX_NO_SEQNO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct sk_buff* FUNC4 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,struct ieee80211_channel*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_sub_if_data *sdata,
					  const u8 *src, const u8 *dst,
					  const u8 *ssid, size_t ssid_len,
					  const u8 *ie, size_t ie_len,
					  u32 ratemask, u32 flags, u32 tx_flags,
					  struct ieee80211_channel *channel)
{
	struct sk_buff *skb;
	u32 txdata_flags = 0;

	skb = FUNC4(sdata, src, dst, ratemask, channel,
					ssid, ssid_len,
					ie, ie_len, flags);

	if (skb) {
		if (flags & IEEE80211_PROBE_FLAG_RANDOM_SN) {
			struct ieee80211_hdr *hdr = (void *)skb->data;
			u16 sn = FUNC3();

			txdata_flags |= IEEE80211_TX_NO_SEQNO;
			hdr->seq_ctrl =
				FUNC2(FUNC1(sn));
		}
		FUNC0(skb)->flags |= tx_flags;
		FUNC5(sdata, skb, 7, channel->band,
					  txdata_flags);
	}
}