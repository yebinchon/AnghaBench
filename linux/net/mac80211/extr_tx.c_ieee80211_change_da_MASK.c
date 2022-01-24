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
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_1__ sta; } ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct sta_info *sta)
{
	struct ethhdr *eth;
	int err;

	err = FUNC1(skb, ETH_HLEN);
	if (FUNC2(err))
		return err;

	eth = (void *)skb->data;
	FUNC0(eth->h_dest, sta->sta.addr);

	return 0;
}