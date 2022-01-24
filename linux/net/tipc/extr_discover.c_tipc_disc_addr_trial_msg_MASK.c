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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct tipc_net {scalar_t__ trial_addr; scalar_t__ addr_trial_end; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_discoverer {int /*<<< orphan*/  skb; struct net* net; } ;
struct tipc_bearer {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSC_REQ_MSG ; 
 int DSC_TRIAL_FAIL_MSG ; 
 int DSC_TRIAL_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,int,scalar_t__,scalar_t__,scalar_t__,struct tipc_media_addr*,struct tipc_bearer*) ; 
 struct tipc_net* FUNC6 (struct net*) ; 
 scalar_t__ FUNC7 (struct net*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (struct net*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,scalar_t__) ; 

__attribute__((used)) static bool FUNC10(struct tipc_discoverer *d,
				     struct tipc_media_addr *maddr,
				     struct tipc_bearer *b,
				     u32 dst, u32 src,
				     u32 sugg_addr,
				     u8 *peer_id,
				     int mtyp)
{
	struct net *net = d->net;
	struct tipc_net *tn = FUNC6(net);
	bool trial = FUNC4(jiffies, tn->addr_trial_end);
	u32 self = FUNC8(net);

	if (mtyp == DSC_TRIAL_FAIL_MSG) {
		if (!trial)
			return true;

		/* Ignore if somebody else already gave new suggestion */
		if (dst != tn->trial_addr)
			return true;

		/* Otherwise update trial address and restart trial period */
		tn->trial_addr = sugg_addr;
		FUNC2(FUNC0(d->skb), sugg_addr);
		tn->addr_trial_end = jiffies + FUNC1(1000);
		return true;
	}

	/* Apply trial address if we just left trial period */
	if (!trial && !self) {
		FUNC9(net, tn->trial_addr);
		FUNC2(FUNC0(d->skb), tn->trial_addr);
		FUNC3(FUNC0(d->skb), DSC_REQ_MSG);
	}

	/* Accept regular link requests/responses only after trial period */
	if (mtyp != DSC_TRIAL_MSG)
		return trial;

	sugg_addr = FUNC7(net, peer_id, src);
	if (sugg_addr)
		FUNC5(net, DSC_TRIAL_FAIL_MSG, src,
				   self, sugg_addr, maddr, b);
	return true;
}