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
struct sk_buff {int pkt_type; } ;
struct ieee802154_local {int /*<<< orphan*/  skb_queue; } ;

/* Variables and functions */
#define  IEEE802154_RX_MSG 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee802154_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct ieee802154_local *local = (struct ieee802154_local *)data;
	struct sk_buff *skb;

	while ((skb = FUNC3(&local->skb_queue))) {
		switch (skb->pkt_type) {
		case IEEE802154_RX_MSG:
			/* Clear skb->pkt_type in order to not confuse kernel
			 * netstack.
			 */
			skb->pkt_type = 0;
			FUNC1(local, skb);
			break;
		default:
			FUNC0(1, "mac802154: Packet is of unknown type %d\n",
			     skb->pkt_type);
			FUNC2(skb);
			break;
		}
	}
}