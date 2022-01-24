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
struct net {int dummy; } ;
struct ncsi_request {int /*<<< orphan*/  snd_portid; TYPE_1__* cmd; int /*<<< orphan*/  snd_seq; } ;
struct ncsi_pkt_hdr {int /*<<< orphan*/  channel; } ;
struct ncsi_package {int /*<<< orphan*/  id; } ;
struct ncsi_channel {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_3__ {scalar_t__ data; TYPE_2__* dev; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NCSI_ATTR_CHANNEL_ID ; 
 int /*<<< orphan*/  NCSI_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NCSI_ATTR_PACKAGE_ID ; 
 int /*<<< orphan*/  NCSI_CMD_SEND_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NCSI_RESERVED_CHANNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct net* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  ncsi_genl_family ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct ncsi_request *nr,
			      struct ncsi_package *np,
			      struct ncsi_channel *nc)
{
	struct sk_buff *skb;
	struct net *net;
	void *hdr;

	skb = FUNC3(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;

	hdr = FUNC4(skb, nr->snd_portid, nr->snd_seq,
			  &ncsi_genl_family, 0, NCSI_CMD_SEND_CMD);
	if (!hdr) {
		FUNC6(skb);
		return -EMSGSIZE;
	}

	net = FUNC1(nr->cmd->dev);

	FUNC7(skb, NCSI_ATTR_IFINDEX, nr->cmd->dev->ifindex);

	if (np)
		FUNC7(skb, NCSI_ATTR_PACKAGE_ID, np->id);
	else
		FUNC7(skb, NCSI_ATTR_PACKAGE_ID,
			    FUNC0((((struct ncsi_pkt_hdr *)
						 nr->cmd->data)->channel)));

	if (nc)
		FUNC7(skb, NCSI_ATTR_CHANNEL_ID, nc->id);
	else
		FUNC7(skb, NCSI_ATTR_CHANNEL_ID, NCSI_RESERVED_CHANNEL);

	FUNC2(skb, hdr);
	return FUNC5(net, skb, nr->snd_portid);
}