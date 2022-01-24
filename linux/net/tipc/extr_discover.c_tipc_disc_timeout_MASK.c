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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_net {int /*<<< orphan*/  trial_addr; int /*<<< orphan*/  addr_trial_end; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_discoverer {int timer_intv; int /*<<< orphan*/  lock; int /*<<< orphan*/  bearer_id; int /*<<< orphan*/  skb; int /*<<< orphan*/  dest; int /*<<< orphan*/  timer; scalar_t__ num_nodes; int /*<<< orphan*/  domain; struct net* net; } ;
struct timer_list {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  maddr ;

/* Variables and functions */
 int /*<<< orphan*/  DSC_REQ_MSG ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int TIPC_DISC_FAST ; 
 int TIPC_DISC_INACTIVE ; 
 int TIPC_DISC_INIT ; 
 int TIPC_DISC_SLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tipc_discoverer* d ; 
 struct tipc_discoverer* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_media_addr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC10 (struct net*,int /*<<< orphan*/ ,struct sk_buff*,struct tipc_media_addr*) ; 
 struct tipc_net* FUNC11 (struct net*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net*) ; 
 int /*<<< orphan*/  FUNC14 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct timer_list *t)
{
	struct tipc_discoverer *d = FUNC1(d, t, timer);
	struct tipc_net *tn = FUNC11(d->net);
	struct tipc_media_addr maddr;
	struct sk_buff *skb = NULL;
	struct net *net = d->net;
	u32 bearer_id;

	FUNC7(&d->lock);

	/* Stop searching if only desired node has been found */
	if (FUNC12(d->domain) && d->num_nodes) {
		d->timer_intv = TIPC_DISC_INACTIVE;
		goto exit;
	}

	/* Did we just leave trial period ? */
	if (!FUNC9(jiffies, tn->addr_trial_end) && !FUNC13(net)) {
		FUNC3(&d->timer, jiffies + TIPC_DISC_INIT);
		FUNC8(&d->lock);
		FUNC14(net, tn->trial_addr);
		return;
	}

	/* Adjust timeout interval according to discovery phase */
	if (FUNC9(jiffies, tn->addr_trial_end)) {
		d->timer_intv = TIPC_DISC_INIT;
	} else {
		d->timer_intv *= 2;
		if (d->num_nodes && d->timer_intv > TIPC_DISC_SLOW)
			d->timer_intv = TIPC_DISC_SLOW;
		else if (!d->num_nodes && d->timer_intv > TIPC_DISC_FAST)
			d->timer_intv = TIPC_DISC_FAST;
		FUNC5(FUNC0(d->skb), DSC_REQ_MSG);
		FUNC4(FUNC0(d->skb), tn->trial_addr);
	}

	FUNC3(&d->timer, jiffies + d->timer_intv);
	FUNC2(&maddr, &d->dest, sizeof(maddr));
	skb = FUNC6(d->skb, GFP_ATOMIC);
	bearer_id = d->bearer_id;
exit:
	FUNC8(&d->lock);
	if (skb)
		FUNC10(net, bearer_id, skb, &maddr);
}