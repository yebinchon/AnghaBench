#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct wpan_dev {int ackreq; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ mode; int /*<<< orphan*/  short_addr; } ;
struct lowpan_addr_info {int /*<<< orphan*/  saddr; TYPE_2__ daddr; } ;
struct ieee802154_mac_cb {int ackreq; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_7__ {TYPE_1__* wdev; } ;
struct TYPE_5__ {struct wpan_dev* ieee802154_ptr; } ;

/* Variables and functions */
 scalar_t__ IEEE802154_ADDR_SHORT ; 
 int /*<<< orphan*/  IEEE802154_FC_TYPE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct ieee802154_mac_cb* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct lowpan_addr_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct net_device *ldev,
			 u16 *dgram_size, u16 *dgram_offset)
{
	struct wpan_dev *wpan_dev = FUNC1(ldev)->wdev->ieee802154_ptr;
	struct ieee802154_mac_cb *cb = FUNC4(skb);
	struct lowpan_addr_info info;

	FUNC5(&info, FUNC3(skb), sizeof(info));

	*dgram_size = skb->len;
	FUNC2(skb, ldev, &info.daddr, &info.saddr);
	/* dgram_offset = (saved bytes after compression) + lowpan header len */
	*dgram_offset = (*dgram_size - skb->len) + FUNC6(skb);

	cb->type = IEEE802154_FC_TYPE_DATA;

	if (info.daddr.mode == IEEE802154_ADDR_SHORT &&
	    FUNC0(info.daddr.short_addr))
		cb->ackreq = false;
	else
		cb->ackreq = wpan_dev->ackreq;

	return FUNC7(skb, FUNC1(ldev)->wdev,
				    &info.daddr, &info.saddr, 0);
}