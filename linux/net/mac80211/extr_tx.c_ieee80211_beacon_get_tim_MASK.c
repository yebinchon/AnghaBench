#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_mutable_offsets {int /*<<< orphan*/  tim_length; int /*<<< orphan*/  tim_offset; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  monitors; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEACON_TX_STATUS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_mutable_offsets*,int) ; 
 TYPE_1__* FUNC1 (struct ieee80211_hw*) ; 
 struct ieee80211_supported_band* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct sk_buff*,struct ieee80211_supported_band*,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ieee80211_vif*) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_vif*) ; 

struct sk_buff *FUNC8(struct ieee80211_hw *hw,
					 struct ieee80211_vif *vif,
					 u16 *tim_offset, u16 *tim_length)
{
	struct ieee80211_mutable_offsets offs = {};
	struct sk_buff *bcn = FUNC0(hw, vif, &offs, false);
	struct sk_buff *copy;
	struct ieee80211_supported_band *sband;
	int shift;

	if (!bcn)
		return bcn;

	if (tim_offset)
		*tim_offset = offs.tim_offset;

	if (tim_length)
		*tim_length = offs.tim_length;

	if (FUNC3(hw, BEACON_TX_STATUS) ||
	    !FUNC1(hw)->monitors)
		return bcn;

	/* send a copy to monitor interfaces */
	copy = FUNC6(bcn, GFP_ATOMIC);
	if (!copy)
		return bcn;

	shift = FUNC5(vif);
	sband = FUNC2(FUNC7(vif));
	if (!sband)
		return bcn;

	FUNC4(FUNC1(hw), copy, sband, 1, shift, false,
			     NULL);

	return bcn;
}