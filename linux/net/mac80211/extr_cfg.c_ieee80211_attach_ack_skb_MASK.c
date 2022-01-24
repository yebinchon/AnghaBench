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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct ieee80211_local {int /*<<< orphan*/  ack_status_lock; int /*<<< orphan*/  ack_status_frames; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {int /*<<< orphan*/  cookie; } ;
struct TYPE_4__ {int ack_frame_id; TYPE_1__ ack; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct ieee80211_local *local, struct sk_buff *skb,
			     u64 *cookie, gfp_t gfp)
{
	unsigned long spin_flags;
	struct sk_buff *ack_skb;
	int id;

	ack_skb = FUNC4(skb, gfp);
	if (!ack_skb)
		return -ENOMEM;

	FUNC5(&local->ack_status_lock, spin_flags);
	id = FUNC1(&local->ack_status_frames, ack_skb,
		       1, 0x10000, GFP_ATOMIC);
	FUNC6(&local->ack_status_lock, spin_flags);

	if (id < 0) {
		FUNC3(ack_skb);
		return -ENOMEM;
	}

	FUNC0(skb)->ack_frame_id = id;

	*cookie = FUNC2(local);
	FUNC0(ack_skb)->ack.cookie = *cookie;

	return 0;
}