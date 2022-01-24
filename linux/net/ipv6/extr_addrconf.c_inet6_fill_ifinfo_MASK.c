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
struct net_device {scalar_t__ ifindex; scalar_t__ mtu; int /*<<< orphan*/  operstate; int /*<<< orphan*/  dev_addr; scalar_t__ addr_len; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct inet6_dev {struct net_device* dev; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; int /*<<< orphan*/  ifi_flags; int /*<<< orphan*/  ifi_type; scalar_t__ __ifi_pad; int /*<<< orphan*/  ifi_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_ADDRESS ; 
 int /*<<< orphan*/  IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_LINK ; 
 int /*<<< orphan*/  IFLA_MTU ; 
 int /*<<< orphan*/  IFLA_OPERSTATE ; 
 int /*<<< orphan*/  IFLA_PROTINFO ; 
 int /*<<< orphan*/  IF_OPER_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,void*) ; 
 void* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct nlmsghdr*) ; 
 struct ifinfomsg* FUNC11 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct inet6_dev *idev,
			     u32 portid, u32 seq, int event, unsigned int flags)
{
	struct net_device *dev = idev->dev;
	struct ifinfomsg *hdr;
	struct nlmsghdr *nlh;
	void *protoinfo;

	nlh = FUNC13(skb, portid, seq, event, sizeof(*hdr), flags);
	if (!nlh)
		return -EMSGSIZE;

	hdr = FUNC11(nlh);
	hdr->ifi_family = AF_INET6;
	hdr->__ifi_pad = 0;
	hdr->ifi_type = dev->type;
	hdr->ifi_index = dev->ifindex;
	hdr->ifi_flags = FUNC0(dev);
	hdr->ifi_change = 0;

	if (FUNC7(skb, IFLA_IFNAME, dev->name) ||
	    (dev->addr_len &&
	     FUNC6(skb, IFLA_ADDRESS, dev->addr_len, dev->dev_addr)) ||
	    FUNC8(skb, IFLA_MTU, dev->mtu) ||
	    (dev->ifindex != FUNC1(dev) &&
	     FUNC8(skb, IFLA_LINK, FUNC1(dev))) ||
	    FUNC9(skb, IFLA_OPERSTATE,
		       FUNC3(dev) ? dev->operstate : IF_OPER_DOWN))
		goto nla_put_failure;
	protoinfo = FUNC5(skb, IFLA_PROTINFO);
	if (!protoinfo)
		goto nla_put_failure;

	if (FUNC2(skb, idev, 0) < 0)
		goto nla_put_failure;

	FUNC4(skb, protoinfo);
	FUNC12(skb, nlh);
	return 0;

nla_put_failure:
	FUNC10(skb, nlh);
	return -EMSGSIZE;
}