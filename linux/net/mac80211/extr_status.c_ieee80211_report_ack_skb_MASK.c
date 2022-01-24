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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  is_valid_ack_signal; int /*<<< orphan*/  ack_signal; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ status; int /*<<< orphan*/  ack_frame_id; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  wdev; int /*<<< orphan*/  dev; } ;
struct ieee80211_local {int /*<<< orphan*/  ack_status_lock; int /*<<< orphan*/  ack_status_frames; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;
struct TYPE_4__ {int /*<<< orphan*/  cookie; } ;
struct TYPE_6__ {TYPE_1__ ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_INTFL_NL80211_FRAME_TX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct ieee80211_sub_if_data* FUNC7 (struct ieee80211_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC13(struct ieee80211_local *local,
				     struct ieee80211_tx_info *info,
				     bool acked, bool dropped)
{
	struct sk_buff *skb;
	unsigned long flags;

	FUNC11(&local->ack_status_lock, flags);
	skb = FUNC4(&local->ack_status_frames, info->ack_frame_id);
	FUNC12(&local->ack_status_lock, flags);

	if (!skb)
		return;

	if (info->flags & IEEE80211_TX_INTFL_NL80211_FRAME_TX) {
		u64 cookie = FUNC0(skb)->ack.cookie;
		struct ieee80211_sub_if_data *sdata;
		struct ieee80211_hdr *hdr = (void *)skb->data;

		FUNC8();
		sdata = FUNC7(local, skb);
		if (sdata) {
			if (FUNC5(hdr->frame_control) ||
			    FUNC6(hdr->frame_control))
				FUNC2(sdata->dev, hdr->addr1,
						      cookie, acked,
						      info->status.ack_signal,
						      info->status.is_valid_ack_signal,
						      GFP_ATOMIC);
			else
				FUNC1(&sdata->wdev, cookie,
							skb->data, skb->len,
							acked, GFP_ATOMIC);
		}
		FUNC9();

		FUNC3(skb);
	} else if (dropped) {
		FUNC3(skb);
	} else {
		/* consumes skb */
		FUNC10(skb, acked);
	}
}