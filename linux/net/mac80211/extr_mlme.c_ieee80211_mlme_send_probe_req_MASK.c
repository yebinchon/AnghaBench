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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_PROBE_FLAG_DIRECTED ; 
 struct sk_buff* FUNC0 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct ieee80211_channel*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_sub_if_data *sdata,
					  const u8 *src, const u8 *dst,
					  const u8 *ssid, size_t ssid_len,
					  struct ieee80211_channel *channel)
{
	struct sk_buff *skb;

	skb = FUNC0(sdata, src, dst, (u32)-1, channel,
					ssid, ssid_len, NULL, 0,
					IEEE80211_PROBE_FLAG_DIRECTED);
	if (skb)
		FUNC1(sdata, skb);
}