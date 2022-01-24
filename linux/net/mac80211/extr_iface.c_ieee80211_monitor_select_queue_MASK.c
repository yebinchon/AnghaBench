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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_radiotap_header {int /*<<< orphan*/  it_len; } ;
struct TYPE_2__ {scalar_t__ queues; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hdr {int dummy; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 scalar_t__ IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,struct sk_buff*,struct ieee80211_hdr*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(struct net_device *dev,
					  struct sk_buff *skb,
					  struct net_device *sb_dev)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_hdr *hdr;
	struct ieee80211_radiotap_header *rtap = (void *)skb->data;

	if (local->hw.queues < IEEE80211_NUM_ACS)
		return 0;

	if (skb->len < 4 ||
	    skb->len < FUNC2(rtap->it_len) + 2 /* frame control */)
		return 0; /* doesn't matter, frame will be dropped */

	hdr = (void *)((u8 *)skb->data + FUNC2(rtap->it_len));

	return FUNC1(sdata, skb, hdr);
}