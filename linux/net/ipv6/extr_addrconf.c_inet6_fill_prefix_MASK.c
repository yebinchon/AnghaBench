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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct prefixmsg {int /*<<< orphan*/  prefix_flags; scalar_t__ prefix_pad3; int /*<<< orphan*/  prefix_type; int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  prefix_ifindex; scalar_t__ prefix_pad2; scalar_t__ prefix_pad1; int /*<<< orphan*/  prefix_family; } ;
struct prefix_cacheinfo {void* valid_time; void* preferred_time; } ;
struct prefix_info {int /*<<< orphan*/  valid; int /*<<< orphan*/  prefered; struct prefix_cacheinfo prefix; scalar_t__ autoconf; scalar_t__ onlink; int /*<<< orphan*/  type; int /*<<< orphan*/  prefix_len; } ;
struct nlmsghdr {int dummy; } ;
struct inet6_dev {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  ci ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  IF_PREFIX_AUTOCONF ; 
 int /*<<< orphan*/  IF_PREFIX_ONLINK ; 
 int /*<<< orphan*/  PREFIX_ADDRESS ; 
 int /*<<< orphan*/  PREFIX_CACHEINFO ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct prefix_cacheinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 struct prefixmsg* FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct inet6_dev *idev,
			     struct prefix_info *pinfo, u32 portid, u32 seq,
			     int event, unsigned int flags)
{
	struct prefixmsg *pmsg;
	struct nlmsghdr *nlh;
	struct prefix_cacheinfo	ci;

	nlh = FUNC4(skb, portid, seq, event, sizeof(*pmsg), flags);
	if (!nlh)
		return -EMSGSIZE;

	pmsg = FUNC2(nlh);
	pmsg->prefix_family = AF_INET6;
	pmsg->prefix_pad1 = 0;
	pmsg->prefix_pad2 = 0;
	pmsg->prefix_ifindex = idev->dev->ifindex;
	pmsg->prefix_len = pinfo->prefix_len;
	pmsg->prefix_type = pinfo->type;
	pmsg->prefix_pad3 = 0;
	pmsg->prefix_flags = 0;
	if (pinfo->onlink)
		pmsg->prefix_flags |= IF_PREFIX_ONLINK;
	if (pinfo->autoconf)
		pmsg->prefix_flags |= IF_PREFIX_AUTOCONF;

	if (FUNC0(skb, PREFIX_ADDRESS, sizeof(pinfo->prefix), &pinfo->prefix))
		goto nla_put_failure;
	ci.preferred_time = FUNC5(pinfo->prefered);
	ci.valid_time = FUNC5(pinfo->valid);
	if (FUNC0(skb, PREFIX_CACHEINFO, sizeof(ci), &ci))
		goto nla_put_failure;
	FUNC3(skb, nlh);
	return 0;

nla_put_failure:
	FUNC1(skb, nlh);
	return -EMSGSIZE;
}