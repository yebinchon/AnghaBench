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
struct nlmsghdr {int dummy; } ;
struct netconfmsg {int /*<<< orphan*/  ncm_family; } ;
struct mpls_dev {int /*<<< orphan*/  input_enabled; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_MPLS ; 
 int EMSGSIZE ; 
 int NETCONFA_ALL ; 
 int NETCONFA_IFINDEX ; 
 int NETCONFA_INPUT ; 
 scalar_t__ FUNC0 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 struct netconfmsg* FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct mpls_dev *mdev,
				     u32 portid, u32 seq, int event,
				     unsigned int flags, int type)
{
	struct nlmsghdr  *nlh;
	struct netconfmsg *ncm;
	bool all = false;

	nlh = FUNC4(skb, portid, seq, event, sizeof(struct netconfmsg),
			flags);
	if (!nlh)
		return -EMSGSIZE;

	if (type == NETCONFA_ALL)
		all = true;

	ncm = FUNC2(nlh);
	ncm->ncm_family = AF_MPLS;

	if (FUNC0(skb, NETCONFA_IFINDEX, mdev->dev->ifindex) < 0)
		goto nla_put_failure;

	if ((all || type == NETCONFA_INPUT) &&
	    FUNC0(skb, NETCONFA_INPUT,
			mdev->input_enabled) < 0)
		goto nla_put_failure;

	FUNC3(skb, nlh);
	return 0;

nla_put_failure:
	FUNC1(skb, nlh);
	return -EMSGSIZE;
}