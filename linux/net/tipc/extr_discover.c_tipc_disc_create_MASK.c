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
struct tipc_net {scalar_t__ addr_trial_end; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_discoverer {int /*<<< orphan*/  skb; scalar_t__ timer_intv; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; scalar_t__ num_nodes; int /*<<< orphan*/  domain; int /*<<< orphan*/  bearer_id; struct net* net; int /*<<< orphan*/  dest; } ;
struct tipc_bearer {struct tipc_discoverer* disc; int /*<<< orphan*/  domain; int /*<<< orphan*/  identity; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSC_REQ_MSG ; 
 int /*<<< orphan*/  DSC_TRIAL_MSG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_H_SIZE ; 
 scalar_t__ NODE_ID_LEN ; 
 scalar_t__ TIPC_DISC_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_discoverer*) ; 
 struct tipc_discoverer* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tipc_media_addr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tipc_bearer*) ; 
 int /*<<< orphan*/  tipc_disc_timeout ; 
 struct tipc_net* FUNC12 (struct net*) ; 
 int /*<<< orphan*/  FUNC13 (struct net*) ; 

int FUNC14(struct net *net, struct tipc_bearer *b,
		     struct tipc_media_addr *dest, struct sk_buff **skb)
{
	struct tipc_net *tn = FUNC12(net);
	struct tipc_discoverer *d;

	d = FUNC2(sizeof(*d), GFP_ATOMIC);
	if (!d)
		return -ENOMEM;
	d->skb = FUNC10(MAX_H_SIZE + NODE_ID_LEN, GFP_ATOMIC);
	if (!d->skb) {
		FUNC1(d);
		return -ENOMEM;
	}
	FUNC11(net, d->skb, DSC_REQ_MSG, b);

	/* Do we need an address trial period first ? */
	if (!FUNC13(net)) {
		tn->addr_trial_end = jiffies + FUNC5(1000);
		FUNC6(FUNC0(d->skb), DSC_TRIAL_MSG);
	}
	FUNC3(&d->dest, dest, sizeof(*dest));
	d->net = net;
	d->bearer_id = b->identity;
	d->domain = b->domain;
	d->num_nodes = 0;
	d->timer_intv = TIPC_DISC_INIT;
	FUNC8(&d->lock);
	FUNC9(&d->timer, tipc_disc_timeout, 0);
	FUNC4(&d->timer, jiffies + d->timer_intv);
	b->disc = d;
	*skb = FUNC7(d->skb, GFP_ATOMIC);
	return 0;
}