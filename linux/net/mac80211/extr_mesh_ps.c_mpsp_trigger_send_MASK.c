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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_1__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FCTL_MOREDATA ; 
 int IEEE80211_QOS_CTL_EOSP ; 
 int IEEE80211_QOS_CTL_RSPI ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_PS_BUFFER ; 
 int IEEE80211_TX_CTL_REQ_TX_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct sta_info*) ; 

__attribute__((used)) static void FUNC6(struct sta_info *sta, bool rspi, bool eosp)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	struct sk_buff *skb;
	struct ieee80211_hdr *nullfunc;
	struct ieee80211_tx_info *info;
	u8 *qc;

	skb = FUNC5(sta);
	if (!skb)
		return;

	nullfunc = (struct ieee80211_hdr *) skb->data;
	if (!eosp)
		nullfunc->frame_control |=
				FUNC1(IEEE80211_FCTL_MOREDATA);
	/*
	 * | RSPI | EOSP |  MPSP triggering   |
	 * +------+------+--------------------+
	 * |  0   |  0   | local STA is owner |
	 * |  0   |  1   | no MPSP (MPSP end) |
	 * |  1   |  0   | both STA are owner |
	 * |  1   |  1   | peer STA is owner  | see IEEE802.11-2012 13.14.9.2
	 */
	qc = FUNC2(nullfunc);
	if (rspi)
		qc[1] |= (IEEE80211_QOS_CTL_RSPI >> 8);
	if (eosp)
		qc[0] |= IEEE80211_QOS_CTL_EOSP;

	info = FUNC0(skb);

	info->flags |= IEEE80211_TX_CTL_NO_PS_BUFFER |
		       IEEE80211_TX_CTL_REQ_TX_STATUS;

	FUNC4(sdata, "sending MPSP trigger%s%s to %pM\n",
		rspi ? " RSPI" : "", eosp ? " EOSP" : "", sta->sta.addr);

	FUNC3(sdata, skb);
}