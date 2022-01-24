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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlmsgerr {int error; int /*<<< orphan*/  msg; } ;
struct net_device {int dummy; } ;
struct net {int /*<<< orphan*/  genl_sock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  NLMSG_ERROR ; 
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nlmsghdr*,int) ; 
 scalar_t__ FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC7(struct net_device *dev,
			  u32 snd_seq,
			  u32 snd_portid,
			  struct nlmsghdr *nlhdr,
			  int err)
{
	struct nlmsghdr *nlh;
	struct nlmsgerr *nle;
	struct sk_buff *skb;
	struct net *net;

	skb = FUNC4(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;

	net = FUNC0(dev);

	nlh = FUNC5(skb, snd_portid, snd_seq,
			NLMSG_ERROR, sizeof(*nle), 0);
	nle = (struct nlmsgerr *)FUNC2(nlh);
	nle->error = err;
	FUNC1(&nle->msg, nlhdr, sizeof(*nlh));

	FUNC3(skb, nlh);

	return FUNC6(net->genl_sock, skb, snd_portid);
}