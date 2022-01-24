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
struct packet_mclist {int type; int /*<<< orphan*/  addr; int /*<<< orphan*/  alen; } ;
struct net_device {int /*<<< orphan*/  addr_len; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PACKET_MR_ALLMULTI 131 
#define  PACKET_MR_MULTICAST 130 
#define  PACKET_MR_PROMISC 129 
#define  PACKET_MR_UNICAST 128 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int) ; 
 int FUNC3 (struct net_device*,int) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct packet_mclist *i,
			 int what)
{
	switch (i->type) {
	case PACKET_MR_MULTICAST:
		if (i->alen != dev->addr_len)
			return -EINVAL;
		if (what > 0)
			return FUNC0(dev, i->addr);
		else
			return FUNC1(dev, i->addr);
		break;
	case PACKET_MR_PROMISC:
		return FUNC3(dev, what);
	case PACKET_MR_ALLMULTI:
		return FUNC2(dev, what);
	case PACKET_MR_UNICAST:
		if (i->alen != dev->addr_len)
			return -EINVAL;
		if (what > 0)
			return FUNC4(dev, i->addr);
		else
			return FUNC5(dev, i->addr);
		break;
	default:
		break;
	}
	return 0;
}