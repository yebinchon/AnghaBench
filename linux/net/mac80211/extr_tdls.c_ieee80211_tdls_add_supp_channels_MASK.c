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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_SUPPORTED_CHANNELS ; 
 int FUNC0 (struct ieee80211_sub_if_data*,struct sk_buff*,int,int,int) ; 
 int* FUNC1 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211_sub_if_data *sdata,
				 struct sk_buff *skb)
{
	/*
	 * Add possible channels for TDLS. These are channels that are allowed
	 * to be active.
	 */
	u8 subband_cnt;
	u8 *pos = FUNC1(skb, 2);

	*pos++ = WLAN_EID_SUPPORTED_CHANNELS;

	/*
	 * 5GHz and 2GHz channels numbers can overlap. Ignore this for now, as
	 * this doesn't happen in real world scenarios.
	 */

	/* 2GHz, with 5MHz spacing */
	subband_cnt = FUNC0(sdata, skb, 2412, 2472, 5);

	/* 5GHz, with 20MHz spacing */
	subband_cnt += FUNC0(sdata, skb, 5000, 5825, 20);

	/* length */
	*pos = 2 * subband_cnt;
}