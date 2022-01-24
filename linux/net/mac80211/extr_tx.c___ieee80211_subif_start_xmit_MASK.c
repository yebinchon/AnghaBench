#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sta_info {scalar_t__ len; scalar_t__ ip_summed; struct sta_info* next; int /*<<< orphan*/ * prev; int /*<<< orphan*/  fast_tx; int /*<<< orphan*/  sk; } ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; struct sk_buff* next; int /*<<< orphan*/ * prev; int /*<<< orphan*/  fast_tx; int /*<<< orphan*/  sk; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_sk_pacing_shift; } ;
struct ieee80211_local {TYPE_2__ hw; TYPE_1__* ops; } ;
struct ieee80211_fast_tx {int dummy; } ;
struct TYPE_3__ {scalar_t__ wake_tx_queue; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ ETH_HLEN ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct sta_info*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*) ; 
 struct sta_info* FUNC4 (struct ieee80211_sub_if_data*,struct sta_info*,int /*<<< orphan*/ ,struct sta_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ieee80211_sub_if_data*,struct sta_info*,struct sta_info**) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*,struct sta_info*,struct sta_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ieee80211_sub_if_data*,struct sta_info*,struct ieee80211_fast_tx*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct sta_info*) ; 
 struct ieee80211_fast_tx* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct sta_info*) ; 
 struct sta_info* FUNC16 (struct sta_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct sta_info*) ; 
 scalar_t__ FUNC18 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC19 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sta_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 

void FUNC22(struct sk_buff *skb,
				  struct net_device *dev,
				  u32 info_flags,
				  u32 ctrl_flags)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;
	struct sk_buff *next;

	if (FUNC21(skb->len < ETH_HLEN)) {
		FUNC9(skb);
		return;
	}

	FUNC11();

	if (FUNC5(sdata, skb, &sta))
		goto out_free;

	if (FUNC1(sta))
		sta = NULL;

	if (local->ops->wake_tx_queue) {
		u16 queue = FUNC2(sdata, sta, skb);
		FUNC19(skb, queue);
	}

	if (sta) {
		struct ieee80211_fast_tx *fast_tx;

		FUNC13(skb->sk, sdata->local->hw.tx_sk_pacing_shift);

		fast_tx = FUNC10(sta->fast_tx);

		if (fast_tx &&
		    FUNC8(sdata, sta, fast_tx, skb))
			goto out;
	}

	if (FUNC17(skb)) {
		struct sk_buff *segs;

		segs = FUNC16(skb, 0);
		if (FUNC1(segs)) {
			goto out_free;
		} else if (segs) {
			FUNC3(skb);
			skb = segs;
		}
	} else {
		/* we cannot process non-linear frames on this path */
		if (FUNC18(skb)) {
			FUNC9(skb);
			goto out;
		}

		/* the frame could be fragmented, software-encrypted, and other
		 * things so we cannot really handle checksum offload with it -
		 * fix it up in software before we handle anything else.
		 */
		if (skb->ip_summed == CHECKSUM_PARTIAL) {
			FUNC20(skb,
						 FUNC15(skb));
			if (FUNC14(skb))
				goto out_free;
		}
	}

	next = skb;
	while (next) {
		skb = next;
		next = skb->next;

		skb->prev = NULL;
		skb->next = NULL;

		skb = FUNC4(sdata, skb, info_flags,
					  sta, ctrl_flags);
		if (FUNC1(skb))
			goto out;

		FUNC6(dev, skb->len);

		FUNC7(sdata, sta, skb, 0);
	}
	goto out;
 out_free:
	FUNC9(skb);
 out:
	FUNC12();
}