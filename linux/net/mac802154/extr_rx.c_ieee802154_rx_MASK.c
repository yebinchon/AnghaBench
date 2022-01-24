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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int flags; } ;
struct ieee802154_local {TYPE_1__ hw; scalar_t__ suspended; } ;

/* Variables and functions */
 int IEEE802154_HW_RX_DROP_BAD_CKSUM ; 
 int IEEE802154_HW_RX_OMIT_CKSUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee802154_local*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee802154_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC10 () ; 

void FUNC11(struct ieee802154_local *local, struct sk_buff *skb)
{
	u16 crc;

	FUNC0(FUNC10() == 0);

	if (local->suspended)
		goto drop;

	/* TODO: When a transceiver omits the checksum here, we
	 * add an own calculated one. This is currently an ugly
	 * solution because the monitor needs a crc here.
	 */
	if (local->hw.flags & IEEE802154_HW_RX_OMIT_CKSUM) {
		crc = FUNC2(0, skb->data, skb->len);
		FUNC5(crc, FUNC8(skb, 2));
	}

	FUNC6();

	FUNC3(local, skb);

	/* Check if transceiver doesn't validate the checksum.
	 * If not we validate the checksum here.
	 */
	if (local->hw.flags & IEEE802154_HW_RX_DROP_BAD_CKSUM) {
		crc = FUNC2(0, skb->data, skb->len);
		if (crc) {
			FUNC7();
			goto drop;
		}
	}
	/* remove crc */
	FUNC9(skb, skb->len - 2);

	FUNC1(local, skb);

	FUNC7();

	return;
drop:
	FUNC4(skb);
}