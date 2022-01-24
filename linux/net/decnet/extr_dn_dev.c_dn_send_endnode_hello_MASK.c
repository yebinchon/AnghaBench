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
struct sk_buff {int len; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  dn_ptr; } ;
struct endnode_hello_message {int msgflg; int area; int mpd; int datalen; int /*<<< orphan*/  id; int /*<<< orphan*/  data; void* timer; int /*<<< orphan*/  neighbor; int /*<<< orphan*/  seed; void* blksize; int /*<<< orphan*/  iinfo; int /*<<< orphan*/  tiver; } ;
struct dn_neigh {int /*<<< orphan*/  addr; } ;
struct dn_ifaddr {int /*<<< orphan*/  ifa_local; } ;
struct TYPE_2__ {scalar_t__ t3; } ;
struct dn_dev {TYPE_1__ parms; scalar_t__ router; } ;
typedef  void* __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  DN_RT_INFO_ENDN ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC0 (int) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dn_eco_version ; 
 int /*<<< orphan*/  dn_hiord ; 
 int /*<<< orphan*/  dn_rt_all_rt_mcast ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct net_device*) ; 
 struct dn_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 void** FUNC8 (struct sk_buff*,int) ; 
 struct endnode_hello_message* FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev, struct dn_ifaddr *ifa)
{
	struct endnode_hello_message *msg;
	struct sk_buff *skb = NULL;
	__le16 *pktlen;
	struct dn_dev *dn_db = FUNC7(dev->dn_ptr);

	if ((skb = FUNC1(NULL, sizeof(*msg), GFP_ATOMIC)) == NULL)
		return;

	skb->dev = dev;

	msg = FUNC9(skb, sizeof(*msg));

	msg->msgflg  = 0x0D;
	FUNC4(msg->tiver, dn_eco_version, 3);
	FUNC2(msg->id, ifa->ifa_local);
	msg->iinfo   = DN_RT_INFO_ENDN;
	msg->blksize = FUNC0(FUNC6(dev));
	msg->area    = 0x00;
	FUNC5(msg->seed, 0, 8);
	FUNC4(msg->neighbor, dn_hiord, ETH_ALEN);

	if (dn_db->router) {
		struct dn_neigh *dn = (struct dn_neigh *)dn_db->router;
		FUNC2(msg->neighbor, dn->addr);
	}

	msg->timer   = FUNC0((unsigned short)dn_db->parms.t3);
	msg->mpd     = 0x00;
	msg->datalen = 0x02;
	FUNC5(msg->data, 0xAA, 2);

	pktlen = FUNC8(skb, 2);
	*pktlen = FUNC0(skb->len - 2);

	FUNC10(skb);

	FUNC3(skb, dn_rt_all_rt_mcast, msg->id);
}