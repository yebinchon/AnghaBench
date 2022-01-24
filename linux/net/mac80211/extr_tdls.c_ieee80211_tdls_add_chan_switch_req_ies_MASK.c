#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  oper_class; int /*<<< orphan*/  target_channel; } ;
struct TYPE_6__ {TYPE_2__ chan_switch_req; } ;
struct ieee80211_tdls_data {TYPE_3__ u; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct TYPE_4__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int) ; 
#define  WLAN_EID_SECONDARY_CHANNEL_OFFSET 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,struct sk_buff*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211_sub_if_data *sdata,
				       struct sk_buff *skb, const u8 *peer,
				       bool initiator, const u8 *extra_ies,
				       size_t extra_ies_len, u8 oper_class,
				       struct cfg80211_chan_def *chandef)
{
	struct ieee80211_tdls_data *tf;
	size_t offset = 0, noffset;

	if (FUNC1(!chandef))
		return;

	tf = (void *)skb->data;
	tf->u.chan_switch_req.target_channel =
		FUNC2(chandef->chan->center_freq);
	tf->u.chan_switch_req.oper_class = oper_class;

	if (extra_ies_len) {
		static const u8 before_lnkie[] = {
			WLAN_EID_SECONDARY_CHANNEL_OFFSET,
		};
		noffset = FUNC3(extra_ies, extra_ies_len,
					     before_lnkie,
					     FUNC0(before_lnkie),
					     offset);
		FUNC5(skb, extra_ies + offset, noffset - offset);
		offset = noffset;
	}

	FUNC4(sdata, skb, peer, initiator);

	/* add any remaining IEs */
	if (extra_ies_len) {
		noffset = extra_ies_len;
		FUNC5(skb, extra_ies + offset, noffset - offset);
	}
}