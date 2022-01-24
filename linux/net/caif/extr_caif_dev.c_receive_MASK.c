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
struct sk_buff {int dummy; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct cfpkt {int dummy; } ;
struct TYPE_3__ {TYPE_2__* up; } ;
struct caif_device_entry {TYPE_1__ layer; int /*<<< orphan*/  netdev; } ;
struct TYPE_4__ {int (* receive ) (TYPE_2__*,struct cfpkt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAIF_DIR_IN ; 
 int EILSEQ ; 
 int NET_RX_DROP ; 
 struct caif_device_entry* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct caif_device_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct caif_device_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfpkt*) ; 
 struct cfpkt* FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (TYPE_2__*,struct cfpkt*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct net_device *dev,
		   struct packet_type *pkttype, struct net_device *orig_dev)
{
	struct cfpkt *pkt;
	struct caif_device_entry *caifd;
	int err;

	pkt = FUNC4(CAIF_DIR_IN, skb);

	FUNC7();
	caifd = FUNC0(dev);

	if (!caifd || !caifd->layer.up || !caifd->layer.up->receive ||
			!FUNC6(caifd->netdev)) {
		FUNC8();
		FUNC5(skb);
		return NET_RX_DROP;
	}

	/* Hold reference to netdevice while using CAIF stack */
	FUNC1(caifd);
	FUNC8();

	err = caifd->layer.up->receive(caifd->layer.up, pkt);

	/* For -EILSEQ the packet is not freed so so it now */
	if (err == -EILSEQ)
		FUNC3(pkt);

	/* Release reference to stack upwards */
	FUNC2(caifd);

	if (err != 0)
		err = NET_RX_DROP;
	return err;
}